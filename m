Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FA838C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724721354; cv=none; b=rH8vTjZ7hFuhsZWy6CzRQ+l4qykgB0tKYIdLsX8QLvbFFRu4Ow0KBeox/JdxRIiT4BPBa5YeuZnJxPRk4QFjIdboYd4we6MmosKL7bnG3SHqa7ld72HlfrErESC6o1sbtMCz9nkPIKFccbS+ZnHwUbCtYe2Frb1wLzFmMADfU7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724721354; c=relaxed/simple;
	bh=D6ODSRBeOQVqfgn7Rzn2Ukco6Yn4s9k2s//TQD2SSaM=;
	h=To:Subject:From:Message-Id:Date; b=YRr3dAZI8XgX4HvyrIdAhlI2qc47q7MqnpJL1UcwrJ4rlNtHJP+0JKjKUc65lS/C8pOCJyRKl0guyB2x5b3VKagRrs30WK+K82stbvLEeK4nki7x4P6DOCnwpCM6M6mWVtymxcF4bfHoGIGJHqxpuCdST3aWfKE/ijmypE+TdXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zm8N49WR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zm8N49WR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF46FC8B7C7
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724721353;
	bh=D6ODSRBeOQVqfgn7Rzn2Ukco6Yn4s9k2s//TQD2SSaM=;
	h=To:Subject:From:Date:From;
	b=Zm8N49WRoFMEQxX+ZeUVC6k8rBng2chtjteub7hO60nC04SavXt4aogg6j4O3aoVf
	 sLnh8dn5bSWUpdxLxl3lHEeosWW5/PvnYLajdUZH5LVvNgIxcvmut3ygOWjP0CYIBX
	 AqHiZomh/vTIeU1l7lV7zVa4axbcN54FkXq0B/+US9cpDaRVGbJvOa9uUlWBYjI4DA
	 PoXfi2sSxO3Bqh75luw2T0pSG5A+hmQuswm8YoYBYFIlclAA+yOxGnflZttiZo9KM7
	 0oApf+STMeeYWedx2IOk+Tz0+CHqCXk/gST3QCsJHQXxu16ogvTts7cBZKAy8H+z2y
	 RhUpDaGWMzjZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B614C5472D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472135361.30216.17101415927846016333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81ae7c993f89a59ad826062ff99c84fe817d8a6ec46270b90fdc93448926232
Date: Tue, 27 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724721353
