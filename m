Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9F7C2EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749449394; cv=none; b=tM7GFMul2ulbn7cNoZt4b1aGNl8RvHyXrL9eNxjZIz2NLE+sTOjozaS/vPcUaqXhuheakHBViY3GvN1zfThb63qWGkXb6a2SWqEmtj3Uc2nK+YyeXHrj+v9vdeJvnHC3PHtMNTejREpqoIS0FUUMIYjXq5RQhL3oCAu1DgMSjdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749449394; c=relaxed/simple;
	bh=eav1eg4GTeMMoXMnpEMzTNx0BEtesTyUbvs+WPSv7kM=;
	h=To:Subject:From:Message-Id:Date; b=GBJZ97a0w1ppBM8vXPGhLQHNlSCNEzj09YClQLiIrFIc4JL5LCP7eyPRuD8Slmrc0fffCF6UdeCL1DAw5itnG8Tnb5oBoZRqR5y8U10dkMWcDhrvtwpR7J281u8PNHQZMCKMEULhCxXvVPruzkHr27rkXvomI0fyAO7YcwuQ/zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGXNJ6fO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGXNJ6fO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFFEC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749449393;
	bh=eav1eg4GTeMMoXMnpEMzTNx0BEtesTyUbvs+WPSv7kM=;
	h=To:Subject:From:Date:From;
	b=UGXNJ6fOcwfAi146dN6Irp0sdsaQypraU6HwKQ/bdpXsk/DGWV/LKOe8KPaBZ+eZY
	 /W/clkTkdKX91GiAnVWPIMS8g1Inb/TRhu4YVZHgw8IXCq2aOOhXbNHHaYVNajBr9u
	 PbSVgcCBQ9xZqaWHSHj89ouI6wnFL6pRA0grM7H4s9suzzvNWf98WPVMxRkL+XoSJF
	 3Eb20qicygswJ+Wv301g6dJHXwCgZTQZV+nLxe+cLyaTREbY1iqBPhVKWr30A4z3ZL
	 82C3ist6FP07horC3huEjsh7z14oSeCh5g9sgdMEbOHCsDU5rr+eWN4H2tKOrrxZum
	 1yQ7PKS21rk/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDA9C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944939357.4230.5572734408304401342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429a07250fa6b9185d3be56fadcbd4b5f9c0c8b2610cc7aa7150d31ba639b252
Date: Mon, 09 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749449393
