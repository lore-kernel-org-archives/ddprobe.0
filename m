Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE69137E
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746387594; cv=none; b=SHKKvyWjm24mofZ+4wJ5wc9+AGCTa9GOHlt8svt2hC2eI4k8oMvtVTC4H2QPrryRnXj2qv3oRDByq5b2fqcT+FwL2vokx5eX8oHBvQ95GlAJpNChCbN1e+HlVbU8miG/RTfgnC/WdSTtba5b8/0x7rxO9CdYhsiP1y3mH/xba+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746387594; c=relaxed/simple;
	bh=VpHyX7ArQKGQTkzxpGt6nzpj4ZntZRsxgJcvfD0Rufs=;
	h=To:Subject:From:Message-Id:Date; b=GtrJ+TIuoNsfrA6DPe19SrHQND+2fy7R/DPLAMcgIbm/4sSVPGlVdLVfFYJZBSbgLlH4OlnQQOAX+gwJLR+UsrsWD2KpDEEih2oA5UQG9WFqpThD+Y/HbBg+kBahj8BhPxWesI9rav8oSuiMl8IrHIw6n0Gmi1ac4uhYOcEjEBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfr68Y+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfr68Y+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8345C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746387593;
	bh=VpHyX7ArQKGQTkzxpGt6nzpj4ZntZRsxgJcvfD0Rufs=;
	h=To:Subject:From:Date:From;
	b=kfr68Y+aip0+8KDWe4/hE6A/4bDU4BET1YgJxvklQtmD0Q8ox6nvXLrHyJ3N80bel
	 Fj6T7PsEhP6zGsxixTP9FCETdY5XVP1JpNqJXQ5asCqI9ivuSbFyh9TTZEdf8lPS3R
	 Elr/uw6xSFmoHQmw0K7DHBy5vjqHFt+cdUFvZ8SiKYif05kgBMOZPupDomCjWDfhZt
	 27vCCzAP7B52odFpx/LNGCrJkPNeYtclIxB7r0ldP55VKmLS7n1QRXj2u+qIvKk9m5
	 i6O4zRklvRa5bQ0ndU/EpeJtIBDR+vaRUllCaiPoEF4ar3HzxaphEJYPgOBhVDTECM
	 /2oUpSmmX9xdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E7C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638759357.2338.10744694439644616744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4de78bdce5e930c693b38b027f79425a4357f560f9c31269e939d682333721
Date: Sun, 04 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746387593
