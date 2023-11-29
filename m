Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D1715BE
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCagsrQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B78C433C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701218896;
	bh=u887Z44vt12PNlMcbkVI8NynoO26ROyt3Fm7mGIBu6w=;
	h=To:Subject:From:Date:From;
	b=BCagsrQHn6G/vy6OM8317VDtlaNdVtGhHyD9kWosBp/9Gc0AIMrFaqG/ORX+LurnA
	 mJYdILEkbmu227AVDgIg6PWgS3F0AmUP5j3ALOFOK1XzUmV7dTTOuZq5WBEraOdXO6
	 4diR+hhcNsbZSNPZB5lH+RoZFkoonGpptcNOajoHP7RxL6RKl25/2ONPkdy//tjiv8
	 Og6J9xAte6LH1AJkcOPKzwRu8P3VH7kj86o7nQbbc0+wQfQBMYDAdglkqYAhfjN08e
	 5Av5SM8Uk7Pfbuxtn8NjldQmOSNyS8GBYgVWL+1c1tXRENZEhPu8HdEj/TwVSv40tf
	 DTIDXwcQRyFFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D042C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170121889637.16086.13478353383970329413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a495b88bdcda42eb33788edf0da7bd3255073411c36a5bc10c20cffc80eb0a6
Date: Wed, 29 Nov 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701218896
