Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BAD1CD15
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744949995; cv=none; b=gVeDZ0uSLVFKIu1uFgKJFJIBJyyhECXkxJZI9Yhy8tBa6kr2L0RswI2Spad6TTNtM6JFO//xuxy3u711RHZ072PN5MWNZmMsqVs9soANJJCmV7Uno/gQH/OuE1Dd71CGvofGe1/3nDNSw4uvMO07ANRflepj5HeBMMTb3lVEsMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744949995; c=relaxed/simple;
	bh=zP8iBrmpuC+WgKS0EeTY+GMhdZmfdf6K+1l3WXZYN/U=;
	h=To:Subject:From:Message-Id:Date; b=a6K6+3PBVcv1OCmWrg0ZH+OoPv7cGZBLG0I8L+J51fsWG6NPGBE8Hx9cewCLdNKgGS9Cg1FVZ5kzRsvkbJJY8jC5vRvHlheL6xFTwdUKlinMihl3bW6k/zd9QorqHJw24JI8BPLVdO2qz5kCzGR34+10AqH0wOIOTdLmuNzeDZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lf+0nfuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lf+0nfuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77D6C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744949993;
	bh=zP8iBrmpuC+WgKS0EeTY+GMhdZmfdf6K+1l3WXZYN/U=;
	h=To:Subject:From:Date:From;
	b=lf+0nfuY/WUC/Qvnh35u9Xa0GsTIrWH5XvNye9Lk2DsGfoIYNVDIEASM+puhPzlG7
	 Sv0Kvhnn7SLW0dY6YMa18/po6jElt7c8a8p0op7j9Jj4N7QgsMoTQcmztyUsaH3fC0
	 miV9rGPOSUHu9QKB6E6k/No0cuBEF2+OONmfmdMEkRqSoXpQHiTs58au8zobvYrz9W
	 qHBlcWOU7v0Bd20ttPFpejwb7tplO6rLKRh81VG8/1G9gMC9MqriWQuDAPsrO3S48w
	 KfQO6BHA0Vqs+RudTjKonl3ctmxUg1xrKxVbRvnuSU98UeyFHOFUQAixFBYlWmgRG4
	 SSPwjrndmCMMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77CAC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494999372.27898.17741970363838085200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11e0da75cebd9d7751459b83c5b1d723013d1cd373db52a5612f2f1bfde4f74f
Date: Fri, 18 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744949993
