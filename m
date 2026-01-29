Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E6D1C5D5E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769730834; cv=none; b=HvITN9JieHvTfBXxRmuLTj2LKmFlcGFQBE28vIbRQv9Xg1TEA9t4XhFoZsrDQmgLVIFjgbT18tLZhW/3Bjr+j+vZS0uVkynq3yQA7Syu6oLNPM1bab+y8+h7Lsb2M7qvcA2/lvsuHyJwaYE7Op/vMc9NDJNaIKKW8B+MKk+JL1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769730834; c=relaxed/simple;
	bh=TaowyF3ui13cQ5pDQYiZxwQsVfzkwUcFpIjuGpWFkcQ=;
	h=To:Subject:From:Message-Id:Date; b=bCMRkNnKbwwSOXBbyZm+Q2M4ea16a47C9xsfDOyOjoqDieehkFVQeaC6b2tKzO+rT/T/RtnwJc8Q9ykPApklNaVAIc6LPFvkg2VVX040HFKj2zKbK4XwngtjBaPGJUr0gNQpm0HEptH8p7EZtPugsyK799ZTIrFKBeG7fu5Gcv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsINs01E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsINs01E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B1BC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769730833;
	bh=TaowyF3ui13cQ5pDQYiZxwQsVfzkwUcFpIjuGpWFkcQ=;
	h=To:Subject:From:Date:From;
	b=DsINs01Ep7kuLWs+osWS5VzJCEDTMsylqc6wnjdoHDyRf6BkkSzP8d0+2vByFYbMR
	 fnbEuNx0QGaIyq3luil5vycb5sMUpZ3D+/MGXmKWGNnx3YX/nyzJyGNsvwpJ35r508
	 K80Cq2Y8bRdFJwB/w655pf75J0xMXIAw/ere6+fjQCIubolZWjhmqF2h4dhaTs9nGS
	 sywQpeKI3XTSbb/tHVbxpJo2T2pNStjVZx/o1yooXOu7gBqBVwRU0HJaDgRWgYnWZr
	 swb9/NGyNlC1T20auU38UfNJUwwdN2XxQokqt8MZeaf/lmgbwZ5TAOJu5bPGU8OeDB
	 +6+6cbtuRgUHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141CD73E87
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973083358.1585.10791775587996472137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04754dcfa158447932f3dc4ec58e165eedec14d001fe4e8e202051c4ccd703e7
Date: Thu, 29 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769730833
