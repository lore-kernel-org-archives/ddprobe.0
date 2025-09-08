Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F01189B84
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757301594; cv=none; b=r9/sB05e754sKJS4FV/D2aIlXIt4H8KCEtIc2HOB0isemXdhKaK41kn8Aef71o60Xsmc1JzwVgVvCJ1CyQtwMvV4l2uY96sTiBJ2u1fR0/gU4LtJDdmz++jdI1jeAHNfIjZLMCFj1GmgfdGhoiLRAIRndNrFVGxW7p/ot7MTJnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757301594; c=relaxed/simple;
	bh=rNWMLjIMoKhAwYN4TKSjJ0WL3yjXmvHitKEOeD/Up1g=;
	h=To:Subject:From:Message-Id:Date; b=jLC1CpUOyx6nJegCsdRjD5iVKLBYBtH3Cgkm817AOiN57FjiOuCwV/7ZMc0xr1JT5XGA8bXPe4jKoUXcXndK3bWNwBOnE7dNiFuTtIpztyaGzBN6IZr1pMIo5UlbE/PIGJlfqvJcfuKPR27tX7xYqkXErug1rog9PmZflgUaXxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7Pi1xOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7Pi1xOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3732C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757301593;
	bh=rNWMLjIMoKhAwYN4TKSjJ0WL3yjXmvHitKEOeD/Up1g=;
	h=To:Subject:From:Date:From;
	b=a7Pi1xOdjRILsWyKNJtw1u76mzDMnQQFdvBhbESruyahdNGSx0N5ynE8d/xOa3lP2
	 dK/1eZObQtzwh0TPi3AnaUb0XxU8909ZDlKP60npl2Tkzh9DdIYGY2Ww84AEXdhQG+
	 D8vlr2PBB+vaGHULR956zg0cAQthpeo0ASRS9Xr8z7MJWnuv06F7i2SSBcbFIq7Na2
	 Ac0wnagZwO8KenYn4k+1hnY57qqFLklw9uHIMk7o5jsRhwX5DUlB0POW+RGNPMAXlE
	 2icia5XdoRGIwz4JlfQJbpMW0gGli9U9dR0pkk/w1p5lSld/nKc+XQ0dje3tX5u6fV
	 4C3cK98OKkSvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C07CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730159357.8017.18023046238779734830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759c1f54ed5ca107d95404d20e4fbee651409b863ec29aea8874ebd893029b96
Date: Mon, 08 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757301593
