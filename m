Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C8E1D532
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrblqBI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87A3BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697811496;
	bh=V5fF66HGvk7OPerE1GhOdAw7C1RR8GAfPMojMc/hFGU=;
	h=To:Subject:From:Date:From;
	b=CrblqBI2D0WEMFGA2JtPAkr+yfZWPSwmSBl9EjNXPEt0K9OP8Hl4kAE0hjPi6Xg7B
	 SNkqKxk8SxgS43kS+cY5GjrzUZsw+ebvuLf2AQZ+M6RwqAcjrfiOguRK3d+T4176Al
	 MLOr/9kh8+F10mdYR4PKinl+lZ0d+weJmys66hrJf7LRr68W4FpruFx8e5sTTXjclY
	 G5LeTA3p8S7ZrMrorVdDskalSZOxd5w772D1E0gNpID49jHdwL0EfppyMF3Mcf1WT4
	 6cQoVj4/Jo34flxHPXvAmDQ/3kgBgb3OBemAW0y8zsm6OYEB/V5lLi8cKeEBxx2fih
	 NNUCR8Wg/okOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D01CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781149639.14865.2918911520015183444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387ab4f42e3a535d163c97426a711ba53874fb381f562c49924352f7f120f3f6
Date: Fri, 20 Oct 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697811496
