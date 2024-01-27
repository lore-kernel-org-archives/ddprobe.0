Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40751E86B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706394496; cv=none; b=gU7wySguWK2285kiebNzWDiW8Unj4G5H4kvpN9HHmCYOMA1lw+GyVSlZC866/lWUYmuwsnp7jRfVvF4wsVqDAGNXYM08IW/MqFMZJtsnqZesW6IspIgdAh5BxhOL0LhUVsVJPjTy/SxYKzuDRayM25obD4DYbHORdrcmdXz0G7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706394496; c=relaxed/simple;
	bh=yyVzmGsq6Td7oQN9/wO1DRiB3R3nvJyqupK0VZ0zwDk=;
	h=To:Subject:From:Message-Id:Date; b=aQ1LKfZ+AEP7VkKXFDL/DyFYvdwzUMWvO5kQp+ZYNsoQHWXLx9F/P1wktwaRiRwwuhHyx9Fl6mNvsFHGG0D7lO79MnsqDBgH2tGQPW9G4DAa4EeryFgdMOdZ5rXTU4zEwUHBoKWs8cpbSu9pF1P/aL1Aof5z8VVpAmgWM+w5dkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ns1n8Oik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ns1n8Oik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE78C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706394496;
	bh=yyVzmGsq6Td7oQN9/wO1DRiB3R3nvJyqupK0VZ0zwDk=;
	h=To:Subject:From:Date:From;
	b=Ns1n8OikH7iwSDTlv+Hhi17qMzB9uN018SQga9nadX6q4poP/sD2rBHrtEFETpPvn
	 A9F6gv1n1dFvQduZpkk7cwYKmtNpV/1PVOVMsIZPSggqzmaY5jvJNzVd92MfU+u7Zj
	 Pm5EmIu84DWS44aRms2xUa+4a5XgQLoAr0XDpU5DuISUdd4D/IhgM8Gm6ihbJ3/96p
	 6erLeW7tcnZBXvLlwdCjFBYm9IJBrb8bbWA6aumBiTYQkMFj1bK4ZPAqVVnnIbHGPy
	 xdjPOCKWwCDHCd07rWFcz1BTQckIvGswiIGssig9hEwb3NrqE9TfCOxm1AFPfgJg0H
	 qtik9VSUoqE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BA6C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639449636.7559.2472166403995686281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed07b4f235c1f293449eecf4a169745d2b65a31b112294a7215bfbd943c8dfab
Date: Sat, 27 Jan 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706394496
