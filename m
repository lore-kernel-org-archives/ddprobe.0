Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B0E13B797
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744571994; cv=none; b=MAYzxgl+PYTm2Ujp4d2r27T35I8Xot8VZFjxwFR3HU2tNa1/+XGU06fiDhr99/fQer/2d7mvYLrFfEzY8K4XwBXjm5Zr9qm2qa9EeSSE1JXjstVENSKS8iE9ZTy4PGk4/WEbatM1GjL/bRpDxk3p3argC2yoQqLRBJkik+y5fNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744571994; c=relaxed/simple;
	bh=JRiQmrSSU+sMsrYoVkb1Z+1Kl0icDvenMryHmlnY+eI=;
	h=To:Subject:From:Message-Id:Date; b=W3y++6ywHIoZn4Hh92gLpJMZbRtf9MLzZC3R7ekEK/CUzE5Qp2Ux/r+5UoHYBcS95DCaS84B96cw9qulVNrEM3A4rOFPSHugk5W96piU3QTT8QQwlRw5DLuV/Bdrjq5CPS8fPJHbzanuEkTHD/zrFDRdKQ2kvtiJS3e98YZRpXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6eo7v9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6eo7v9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2191C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744571993;
	bh=JRiQmrSSU+sMsrYoVkb1Z+1Kl0icDvenMryHmlnY+eI=;
	h=To:Subject:From:Date:From;
	b=A6eo7v9JT2qVROsSsY6IZ/Wjy1M65Ui5yAmUOopHzyLzigeLW1PdHQg35+JpgoW/m
	 Sy1Savv4gQz3wKHYkk7A1hg1ByDSRUvqLmB885VadsxoKg5S52TcYASniCNEmMiXyS
	 meacHrCU6Lke+ETMkve1nQp6lmKestYBgSsYiKP4sHrnFc74+GW0HbfJOJAYP2AKbM
	 DoVqmX2kFvT4lxwiAe1TNfaJTo3b8MUv+2uG4TSnB7ovDxwfkm5pXAGoJx5uwRruZr
	 +8piczosdhpjQQqFBcrzhEXL0poa1XpYFKFpQ2Vxlk/ry49iHW/1tzEAYZRhDnPhs8
	 OHDH8xu8/2veQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E75C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457199359.3936.577661313515952957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2db7a0f4036d940b104429abc8c07a56d9f8e4eff04a8963f25f93aa218adb2
Date: Sun, 13 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744571993
