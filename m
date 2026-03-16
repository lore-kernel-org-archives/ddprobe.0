Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047A238F94B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773658494; cv=none; b=E+ea/r/e6qDYcTzMIjTwsU5p03xZUptlSgJV6Thteb0dt0PyxR4leLQuYQzDX5C96QMpZZllHpHjsIOAP55+8cVq+c8MmHu5vxMxFfQngt2/IGJiOp25i45KbMeBJ5Wg40LNYiHaJGWoizwcVsX5DBJRM4fwljlC7Q3XLAdBZJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773658494; c=relaxed/simple;
	bh=0nF7CCMD8h1tjBjnlY2ZIK5EYJd4BC7MXIQ17lNRa/s=;
	h=To:Subject:From:Message-Id:Date; b=k9o2mUnjdqWT3UhyZY2aiii1/cwLVFmySvloRcKTa1bsWPi50a8BoVYKySpR0eiKEGWJae7NuqQwfOBB20Zk546vW18Huu89qBZLLv6jeAroATJykQZ/k3aW4EOSiiMOgLqKp/JQeaAmf2E21HRjoS6PvEW/w/VUrYPG+Cfp9m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0j2ulnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0j2ulnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1465C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773658493;
	bh=0nF7CCMD8h1tjBjnlY2ZIK5EYJd4BC7MXIQ17lNRa/s=;
	h=To:Subject:From:Date:From;
	b=f0j2ulnl+4JJHs6kBKTyCvCe/+5xX8o1QCifrvN+A+dciba6DB0IqXw5Ediqp445c
	 5UIBS040QMtigSz/8rqYxFgHTw1uc6VuMakR+h4cXV79QZN1m/pfwDp6oSDUjYyBtO
	 l8m7LE3XSd00QCn1e3yvU7IGNKwZixjueBswjzf9RFsLx0XtpEk+tNG6I/yzYOAg1k
	 tl1ulhmH8OtxSx854pT5laPSfRsuS8+a5lC4imp4wkny2uE6gqij1om788+tY6B/NZ
	 JMla3be3cNGb9RRWxPItBZRsEm7TxR7xkdyCyKYFVjfk7b9hEzL30scwvjZCu2+EcQ
	 SIfJGrsw3HQ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFBF4644A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365849358.25651.1991502203204529592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43ca6539889e64f11f7e00b5465f96ddc9f8dc188f5fc32360535c09a0dc6f8
Date: Mon, 16 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773658493
