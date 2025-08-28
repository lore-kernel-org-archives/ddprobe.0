Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041CF1AAE17
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756350595; cv=none; b=VtUWUmS1se9x6l+rHS6PDLmgmeZn6rPlTE1jRFpeqMobZXQjLdDeYNP3ZinOGU+wcmyvDHvfbK0Xy8dxixc4srTLIe0yjnCkc7UicRtv4iA4n3d7/Ryp1rPBbBydf3jH5LvL6Ym93HXzJnKibC/4BZJcOZh+6x5grw6Sd5J1ln4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756350595; c=relaxed/simple;
	bh=lkrCQzrg0pTpYjNbkI89K9Xi46VQB2W49wzT9FpLd7s=;
	h=To:Subject:From:Message-Id:Date; b=HXPp8vtNgEZ0JRAJgUrtUQzJLmQJkLUvRDBsow6mJpKkLdGsyIadkMP5t5g5BXA4dJOMqm9ixLOKQN5WKJR5u09Q5jiOpVz2rQN7Dv1G5WSDMoSa+V+HwERSoqPhnSxqQHZ+Wmyfl5Srs/OI+5JXBMb9OY/HuaI80YstAr6rwoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXVMX9Sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXVMX9Sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756350593;
	bh=lkrCQzrg0pTpYjNbkI89K9Xi46VQB2W49wzT9FpLd7s=;
	h=To:Subject:From:Date:From;
	b=hXVMX9Sy5P4k3V4fc2BC2rl5TzPkzofQgPMh4XibZXq5usaUZbhBJCZ7Oi20m6s7V
	 GSFZU7JNbUix+RSbuVqwHhyHsLIg6hkFK1CvvzdLBDSR+Z1q/GOJmiYPvrQQgyUqXK
	 Vy9waEM9ybqKRkZK9QoZMUT2mqgEI1i5+EPZV8l8XV6ahBndo92I+na+aTdMEx0R7F
	 JbE+a2QjGArmtTawlAKFfqwc5h9/Yg6UZrMcyDLJN85HRooVXLOw5gDcnDIA1dffo/
	 chYJJFV396G4EK9b3vba+DL3PSVaGpmmyKVYx0jTDRTkfaJMKHqhZuUmBi6IsL4vK9
	 heuaoQ6WkmT8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F261CA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635059357.13532.12685043759224288442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe49186330d8338c402ebcc6baaf088a99010371e082b99514d0045a2dd903e
Date: Thu, 28 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756350593
