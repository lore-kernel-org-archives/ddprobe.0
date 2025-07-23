Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBF3220F4B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753249794; cv=none; b=R7KNuEYFLBc8NZoWl3DDAL6LSeGrZUib9ej0JLWBjcl927nsY1oJZzxkLHIFpdavU9GCapY4M22ukFaALvZFPaBGFK3trxVPoxmn2Ut/3jLgHGxuycWg8qA1kJzxbey5D/PFxqsD7CIk3BZlRWL6e2r/0qSzCoSpbtJcZvHAHrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753249794; c=relaxed/simple;
	bh=U6a09+rDOxcGPQw320zOX8wdMjYoLDcDbtlZFobctE4=;
	h=To:Subject:From:Message-Id:Date; b=cZaKKdOr32+jeqZ8jeJsyLJ+R6Nz3C4jEbDiXE+YnX7s/CqJ1yXbocIu2iIqLHlOTrHI0eQJAMso3d41h2giwHkfWKiUSjqHyc02kKZT1LjMxRuBImh2RKAS63YAM16HBD4IpcA740zNqC18ze8YiVkc9sD9PEKxH/cfUVSZmJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNsRXgDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNsRXgDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753249793;
	bh=U6a09+rDOxcGPQw320zOX8wdMjYoLDcDbtlZFobctE4=;
	h=To:Subject:From:Date:From;
	b=UNsRXgDtz7dzizQzNV0hbwnX+XflmjjAMJCzndXUlolHaXie2952zhnkJZT3bFlLu
	 aoerrbjEMLFoEls3WxbAlEAX/xa+N+eoi2c3/mUJWY4xsiVF0xC7SGZ/dEFEo9hv19
	 kIsaJ0/CQGJAzWea6s32rlXQUNcMdH508VKTgRdNgrynUjez+jBUDYljiKS73KmQYf
	 vtWyccbOuRZ0R0oecVpRFtsqTZO7ZO9i9pdqQM6JwLmeebz9ObZDhRVHeoIZ1+/OQr
	 etT1k9Xab8HFk1hJQkpoB+a/jL3EwRWETje+bjwHXq9+RbgOYnbPU9dDNaBfe4XqJG
	 4oW+FWgQ2uKug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5EEC83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324979357.1133.16037931230770902725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699c00eae031074b0c626b56701ede0cfa665f5596609b02894465460d358a05
Date: Wed, 23 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753249793
