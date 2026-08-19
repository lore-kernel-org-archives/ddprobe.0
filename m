Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BAA371899
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787173834; cv=none; b=gAWDubJerGfuNymwLTnxFmiU6xAd+PEQHOPKjWm51wT3VKAhMujczuIC6NhEwkkmqVPTVoqCKZERMWeYW6hRaNtUQJA1PsGhPuqAF2yE/uSH0E/6yRGcXCop291oxw21qoWyvlpntAnlBeJwG5wEGZ/sCn61TlMZnySv0iMS07w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787173834; c=relaxed/simple;
	bh=9mJaobxkC3cLkj+uvuQ8CjhIAbFH9/3WoCEw6VDYwmw=;
	h=To:Subject:From:Message-Id:Date; b=eMKFO8n0kkC5fNAIbh+4Kl+g9qHq3IocQN5smbAwrZTZ4YiBRHpMHSP3/zvy2DZZhXEAD0JuBohoP+ZhdcGV5X/VzT/9YeATuADrIvvGWy4cck7jHSK0jIHLXPV6blAXi0ieh6Nw5lTwdfGBobkRF0C/r6SxPY2tiZlz8dil39o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnArOt4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnArOt4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8084C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787173833;
	bh=9mJaobxkC3cLkj+uvuQ8CjhIAbFH9/3WoCEw6VDYwmw=;
	h=To:Subject:From:Date:From;
	b=DnArOt4+rWUpm2H5hJ5LchRajoVKv9ngKXOL2zD6DWebv4UB9rvJ25TirXZCTRkq0
	 iPHfcMdsyaYMFjD2VCysb2d0TCR6Snz5MCe6Pr1vOW0qArfaOhi3uPGimTB0eHZRbL
	 Y+0ghdaq71IiHX+enIvC79D/aUYmPmguJhkOFmWMmOD0flDI2hTIMt92xUY3M8MkSi
	 CzL5alUKDgFtJFX8UjjfrsadEx/t+aJKJCcqED9vmNttWd6W5MA4cL/jKTn6F5vsiW
	 X0cwxUZpfAGpQU5fRkArfprDnkBRrb9ixLmxWRVRFzxWhQCLeTL7S3h/FKAIRxOFuV
	 mPI5kDECeIGSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA98BC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717383368.21238.14190546784969708310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dd9f734e0038267e3739c656ca870e5098d06c9c198167e347c673c2d6ef09
Date: Wed, 19 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787173833
