Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149661E833C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750507794; cv=none; b=u9pCMehGhH70p3ByG1piGBHekmBYs9yGYSrFjGZI6mKJjjraByPf56bNR3OrfexbNvO4IXvnN+YiWJn99C9ZRIbdj7S3MlAv0rTrp2s7hjnbcaSKCGdWWNtHBx6qFge1X7mKe3Je4NDX2yUIB1NW/jxvPQh/HVflgzfS22X3Znw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750507794; c=relaxed/simple;
	bh=tLY6O2TYUU/B/RKq0uOuLhks22UgSRQrP4SgZ6LIQmM=;
	h=To:Subject:From:Message-Id:Date; b=t/EVXSD/v/BoUCuJwSB6cT2i5wLgusfcR91bottHrqR9LUCuX7o+50dwTjTipqns09E8TfwNPZKZ9EQ3lGwnBoJiuKpx6YVKMZAeGvk4VGRE6eRiUj4/nVrtU5nO6cTmqp9bFesP9Q1Y/upGcMJ8jtUQcjKDe+/1Degy1/fjtpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuW2Hioo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuW2Hioo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A233CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750507793;
	bh=tLY6O2TYUU/B/RKq0uOuLhks22UgSRQrP4SgZ6LIQmM=;
	h=To:Subject:From:Date:From;
	b=RuW2HioowS5oOyMbiyCA5+eCLb2EOFV8r1KNGKAk09OBvD7BRb3wVzQMm0CuFFdAS
	 jHlrvoYPfnLBDIbtJ4ol0MEqpv5W13F0OT/5ckPHtLYqfaVKJ07Q+N4G54hh5OGaxQ
	 L/0/l3+FjVvXuaiOEpXOwRnMb1KTI/oNT+dUItYibULdp5c8PDjPbLc2c4D+HrZn/L
	 DqzlLJGfwkkWdUsN5CG2er8ey2hV2TyL2iOduPygH35eQ7ycVnl36JaotL8uMgt9xp
	 vMTfeVmPlxrb9Z/wT7HE6mi3H8LarfEFK0Gz6hTi+GAXE0OnHcsrye8LdTcK/xL3Uu
	 hfQVGJ2zqvVPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939EDC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050779357.28707.10188846662119174555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82ebf83be1322315a1980b347970b209a69762405896e149407eb1ec3b42fb5
Date: Sat, 21 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750507793
