Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358391B424D
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747371594; cv=none; b=bJ6aRWGHVzpeMAlIRhNvnptu2Zh979o4sM9pRelOwQqTYkk14VLY9VF9b3OcdR6HeGGVTo1gNTvO4oFq2gfAP2uKmXnW5ONcmyDWqeWaggNmMxjn4twWfHkmXaXlDTvT5LVqIhncpmMwHcyzBGKLAP+70tL4RjcvVW6lX9ay4FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747371594; c=relaxed/simple;
	bh=A1tNhQxT2ozifU6wHF7OfPFBVbIHCr3hyhFTuZqiLMU=;
	h=To:Subject:From:Message-Id:Date; b=dZGEn/pDGRh/+CwxbOynbPnLWnPGvTCgta485sXay0S1EjoNFOjpASqWMRk1zRdGfSb+c2afh1rbrw/Rb9+9mflqDhIrnMBT/vx1uR5iXS79KmKUGs8ncZFxVTruTszkYWadnS4I/QEFTTuDiQHQoGU8E/7CscREv/ECwSOj0pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXt38f0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXt38f0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9570C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747371593;
	bh=A1tNhQxT2ozifU6wHF7OfPFBVbIHCr3hyhFTuZqiLMU=;
	h=To:Subject:From:Date:From;
	b=XXt38f0jdSt6VIGyaMfYtzzQTYnnNwm+aZJurEgUXG4is8RgqAKbg/E5gsZbRrHBu
	 O7+kuT/U/HTIzyxkBcGL75JVvrYUuKV5x6wjL+DBA5wzMKg3d9mA3qhh0h7gLsbY+h
	 TAR3UA+a66SkqshwawJRCYh8lvEXbbQJwjB/Y2sKuE74ZSOCiZ3Q0FIEfRCkbbc0X6
	 LmF7ZJqbmKvJMdHp3CMHmtlHSlGqug6whANTx4nwdo9PTgwiEs86NK0f5CKVeC3b6c
	 84rRHfC4zZbNu1o8+JtAobVWN19Z1GHtz8N7edO3Y4o5hIR6S7iN7z3Ya42jW+W2Xf
	 nhvhJwARtXuDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97191C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737159359.8000.5386994415235789261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f50f1a28c8962817fc2c3efb3ab41daa4c0e14da71739e92afd1dae7e4ceced
Date: Fri, 16 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747371593
