Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7169D2AF1B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716648263; cv=none; b=TuRbn8rWZtwedMliVPE4dFAX+xy2MwwKVoJLd+NQkfuNm6z0+hxT0fc3gAhD1XGNzOR3CRGX/XZQIQaltTygDz0Qgh6kNblG7R2obicAGE6SbdkxdrAKYjjQszS4kKe+hN68uUu9xKv3c53fOSxJwlLRsTjA1DAawz7KHdPi+wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716648263; c=relaxed/simple;
	bh=+NTYGdejzsd9jGxcgZM/T+GoCD6KQrBLQtt6IZksonA=;
	h=To:Subject:From:Message-Id:Date; b=Bu8WEN/jMrhbA3kfdtdlV6j/WnMiH2rYkJ3bKjXeAxA2J+j+sRz8TGFGdRPXrdoH+cSxhTIcrDcOEIb6Erg12k9LbVEq0DYSznwt3ZYXS/xa819taMwW6rb+MbOOWQyIsGw/bmLubnnJtBYexRP/MGxqxBFVs9CR3kgdNtRZF8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQF37+2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQF37+2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B7FC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716648262;
	bh=+NTYGdejzsd9jGxcgZM/T+GoCD6KQrBLQtt6IZksonA=;
	h=To:Subject:From:Date:From;
	b=QQF37+2Ew1Ju81egKPX0/DNzC1J6bBsbm0vhtOpEOoSd4oIPGiaj6FjDEFTWbmoOK
	 EVvmjceu9LXZiJHvB8xBGIq5jD3TTCcqZmIv5Xur4K9uW+WjxRNs9guizkStr1MuF1
	 j0GXveyp8cP4Wy9nA+f1ZOT8s/3gZtRW7Zzmwrrh8ymkBP+nsxFxO8EEzaFjt7Pd/H
	 wN7tobUGF96+aJRLb31ipCoHhbRwqCEBdStU2n2/UQ8LGEROAU+1jKDycttRwAACjM
	 7f57yu8s+oDVt1auv2P2LKsBWn+dD0MCDSuEoBD4gZb6+1B5vcKO8CZA/DdBO4NvUu
	 VeYrOgufTR6tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F06C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664826277.11021.15723832064004036694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc89aeba3a94ddf57af1610ed574314175aeaf4385b0952d835467614303be7
Date: Sat, 25 May 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716648262
