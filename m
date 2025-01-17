Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C93C13CA81
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737129954; cv=none; b=qvPyrQNVf7BpEIUpj3TTz6i80n4kxHgcbokncK9L34Rn2RsGUchVLCOuX8rEiYPQRq3gOgk8L0xnRG47A2NTLY4OxoiEKRJZ9z/aOf3WZc1vlK+0MbFtXFmYZe8Wl8pxjtq7UCtr+hVx2EZYIyHsjNARLywidfTE7GSU2PEvNGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737129954; c=relaxed/simple;
	bh=Vuwyd3sWgKyMfTOVG3nsLgpmPW7Cgq2K3Qx81L4cJvw=;
	h=To:Subject:From:Message-Id:Date; b=SF50v6lGVecJ0eDsbJm0hf2A+0VX1bpqyjdDfs+5nZWc1hiXNfoBAj/5X78v5OuquHl5DhqWy+/ZBxMagXUkUZKkMph2qr4qAf69qTHpo4pHG78NFvxvdSoFJZF5CN3XADW8QTfGILXBOe9GJ6BoGd8priTfOCYrkWAAyuh4hYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdBrwKSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdBrwKSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A584FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737129953;
	bh=Vuwyd3sWgKyMfTOVG3nsLgpmPW7Cgq2K3Qx81L4cJvw=;
	h=To:Subject:From:Date:From;
	b=GdBrwKSe1SNY77IS2q8Bam+4svk4UP9XufCSkmhUWA5xUi+SJhg4iM9h2OYAlS3Yu
	 o5YNt5cKRCQNY33Dapzr2XoovlBa14ppqHSJdLTSWk8GWS7N5dVzp4eo6shUjuuiIQ
	 h7P2zDdgWBSs5/cNyfF9STv0wGBfOoLR2Fk8vBLm+7BThYepIswzbXqqe94l+Ngy3Z
	 SpjJw3e2GKRXU6n5atKsTPKpyyPLRSDFM9fC9mxuwCODZ6MAUHm0i7bNCy9m4MIXQk
	 1QPLSRFsoxkZ8dJybEMOjvndpwryuH/pCvDfsA2hEYyCHnKSs/Dx5VECzC0tdCWUh0
	 kgjeUwmLbv8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CCC02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712995358.20335.8025188489767114703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39709560da35e7790c0431821abfd60484e54d3793e2dd09ae2d5d963a047726
Date: Fri, 17 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737129953
