Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3353D18C02E
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767545634; cv=none; b=RvrXHhAOdXjgwcS71LX6TUP9wvkm+TutFbE4+wFuHMRRNxOCpOGXcmw8KOoouMYsHWtKn8ZXMeY45TRhH+Ec4YWacvrHTtK7yZruunCthCk7xVDnXYHz3jUDUBYXzagQS/+rsi8DXUKkyx3GZQxnGR4Kq7mLnGS6Lh+xgRg5Vb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767545634; c=relaxed/simple;
	bh=iKF6SB7aiBb1OP4N/kfXF6nIVngRv57nvfN+qAdaVr4=;
	h=To:Subject:From:Message-Id:Date; b=dll2Po6CNyTPqt719QZgV4H4Vri2GwpXpGR2kv2ui7HOhXlzCHlXxhmOJAPG7fLp6Bu/dEtpuivBlxf+FejtsOUMj+JOsJ0chU1SoLzAkHkIYm+HWZ0NPNprzWJWR5h5ptg4K1pFnBgwqz6QOInL4CYQ8LtKj/5Z4Mmqy9u23EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpQHx/tI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpQHx/tI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4312C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767545633;
	bh=iKF6SB7aiBb1OP4N/kfXF6nIVngRv57nvfN+qAdaVr4=;
	h=To:Subject:From:Date:From;
	b=cpQHx/tIBGJMyEiDKaoWfX+B0ytZ+u5msXW0mSNwPOmWRlc8JUQtp9fiDg737rISk
	 RjAILaaDrELCZ9Jqe4MaqrVLzyjQyt8G71aaAo1d+4BlK23iOyy6dKDJ0I3R//HRua
	 0kijGAvMn8aZYi6+cnR57+szmLRlqJeIgSG5IXs1/9GmsZkHXDvw7nSHiqdkncGk3/
	 9MUERZrp/wsSqbrio4QlXJ9Qiu0AsxkFKu1I7Uatscme1bgQirfo1IosaIPU7Xy99f
	 GxewblCQHndV9m87Ryfh13Bzsp5ljhh9nDOZmKkFgH3QteAcAcgXqGvQl0NzI3qfIl
	 bQqjtiaS6N+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937ACC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754563358.12083.5950943555516271020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c953082431c79703b9565d8e6555b6ffa04090e131ac627821e3ef6d7fa2cdeb
Date: Sun, 04 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767545633
