Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496EA78C9C
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746920395; cv=none; b=Nbb7SmNSffYCK6PmeREtWtrdpUzPY4KqUvVReb3z2g7p06URbl+y3EJ0ooxvay+6TGgspUjy2Bj3kAtuXFkK32jx6j+iSFv3w3JtDdj0Qk5/pitzkHQijCwkpTfo+rm4/y5CdS9hSUYLUHa4p/n5/PwaGpyXqS7P7UwApqNiw9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746920395; c=relaxed/simple;
	bh=1lJrYd/6yOxCibXqhwKynj03ihXnDrjKIb6HdhAgrsA=;
	h=To:Subject:From:Message-Id:Date; b=eqEBHewcA60teqwMy92pb6qBDC3kDgilpGjBaUiwVLWqW8s+/B4fQjR6HnwNb57PIb8z3pmDlD58bbn+0oQtuNb/XKuJzCZa+xczzJotY67hUS4zi5qXxsTphsFb9V0D2QjSj/eKkWoJ/0uG6423s2J8c4+Jhxl8ep/0Od5pct0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qI99qqaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qI99qqaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA707C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746920394;
	bh=1lJrYd/6yOxCibXqhwKynj03ihXnDrjKIb6HdhAgrsA=;
	h=To:Subject:From:Date:From;
	b=qI99qqaQjUY9a3NUZsGtW30+0dfWFjOfrarUQX0/W5SohT5zl7s9o33papr8hs0kA
	 TIykacwOctEhBab6J3vkFHSz2k41XU0Dz8yG7wvp5bctj5MEDy4GQ2Z+vMfEdyKj2m
	 J18JV6/hw70zdTa8vWIsHWaenQDe2XVVhL60hwwZfZkYp2xQ/3cb2dBxO0k8oRTjUL
	 yGX4Fhc9hueDqme3Tjy2D78gl3rhQjEq2vkxIwH4wA4wDdpOjHpL+ftBq4biHDVdHF
	 hbThVp26TJyZFTEcL4wv6byAEFRIlbR9FMQk4ZCsL2ooM1DCmkUHNfSFMRTWRnLgoM
	 YGkvfwF5WoWfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B0C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692039357.15106.16478588034417380971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f4b4116f06cb6eb33193e14b516eaac51841c341705088c589b1949b056c22
Date: Sat, 10 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746920393
