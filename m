Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74D316A395
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749907793; cv=none; b=W0B30fAkGZFuRgxKyPVVmvU715VF/PNyDVTZnfP1DxcEw5W59CpCGUh43swWkobpPrwdV5uc6V0m00nRThYP+HDSA8BtolHG3YM7CQgvn+lyqTldNJl6+EyfNl5Fd7fj+Mhmfk3y5+0/LL5kyT7Ni7xgkXDDzkSYsYO76gmZpiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749907793; c=relaxed/simple;
	bh=n7hDvZ69e7JDyySaMR/zU8Kyc1wie5SU0c2OfsIWR6k=;
	h=To:Subject:From:Message-Id:Date; b=NGkQ/KXsF6MpTjLbOEjMs0IfUq/5BRHMyWFyFSSwvWe1RobjeqvRMCBX2d/p8ciRz4YPxcrGfwTUhAJn3aAy0wDxV3ciah/EY5vAiMakbLp0ule/nkzILizXcOPnWDwRP7GXPujuv3OiuXU+ai5JCZ2kCA/EWvn/nPzVIRlTlis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMxB9r5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMxB9r5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B35C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749907793;
	bh=n7hDvZ69e7JDyySaMR/zU8Kyc1wie5SU0c2OfsIWR6k=;
	h=To:Subject:From:Date:From;
	b=UMxB9r5ayeS5QM0TjJLUFCzdO1/+VI0jeStsssP4S4lqPyp2H066Uu+oBB3WGnMO7
	 XloRWEYIbDr0IhwZ5u+cH6fo5emC0Fezp+UfbfM1jyVizZMrDaBRtalCGfrCPNsy7Q
	 TYA8gZqSbyAXU8HqSomfXUQ6vubJVzQX0DF9ktvgEjvVSyOedVeKLMtd3xXUfbyzfl
	 6UDja/5ILCGAlinpcbFnah0XdbydM8Hmm0eSi6W7XJuYWzLgMyfxCtld/EMr8xulYi
	 aq0N3ktzXIPElRNREkawLj6xHMPuOB+XQVCw6aWfx+iB/ewKFA2y7FT3cBKrFB3UK2
	 50DcyzU2WC3Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146AC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990779357.3588.17579117059957573494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d96d0f05e27ed744d4e9d6ec8a4b5d72b47ef9cf61117f34fe11858de7b3d3
Date: Sat, 14 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749907793
