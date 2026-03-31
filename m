Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D75B37B028
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774981494; cv=none; b=V4gzC8iSArF5RNlPgmbkovDMMhWz3fhr1Pf0pH5XwdqJOYm5VFYkBc4zzGNiFC0CXz/8oKhaDeJbmn5BquAY+2op4zyIP9Ggtxz/ju8Zb0oKan9atRuS3bDUs9Tglr5giIJfghzvCmNk/+8CWUYyF1+Eoc4RZrOJVaKWcKE1iSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774981494; c=relaxed/simple;
	bh=sDoA7hUi0/pdxAz7U8k6bV+fHWKUSjFlG2YoNP9T4aY=;
	h=To:Subject:From:Message-Id:Date; b=PSUd1KG2T/bB2UkPJFVuyjpxTJpV//D6kxhSYxVV1JUgmKyz57W76/HbDEAX/B20qYKQW69sGQa+muWg018W+NQoRWi+Ure6PaB1uIHGwjOOA+Al26lSZFHjCDRtZnbpmDN14CUqa0m1biCtpjfTyUBH7YyOTo1K8uKrykzIdsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XY02JQRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XY02JQRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C94C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774981493;
	bh=sDoA7hUi0/pdxAz7U8k6bV+fHWKUSjFlG2YoNP9T4aY=;
	h=To:Subject:From:Date:From;
	b=XY02JQRxKnCfSgauTiRiAIO03GS4py7gKkg8lkIi1Zaz7VVKuP39HH/aUjywVBbib
	 q+WKP85fefwF2+B/0khEslCX/xV83kcEOam/4fKgm+UaEc8d68xfGHjCH5KapZB6Ed
	 XEOohRwAbCWCFI7zrLrh/fDPbewBtFkCgmIyQcbLYS9FrI79qRri4sYK/QhN6SnNNq
	 jKn/0LTs8WfzbDTe276EYrpOWRMENffuSB7JJjA9a9gE9bRQA5SOavqT+zHMICpcI7
	 4Sqqrmk4U2pGOLWT8ayPRIDnqKNCPrDi/4qM456t5bC+0EJU3Twkp4557LQCJ9LnCr
	 sqqE6rAoQR09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9563210F92E9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498149360.17465.590299897828584940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c15332b5d63ca60d133cea7815d2b2020da9ff16a406641df34ced5ae974033
Date: Tue, 31 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774981493
