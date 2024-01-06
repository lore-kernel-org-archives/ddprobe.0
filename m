Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108AE137B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVWCDJHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA94C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704501496;
	bh=4hK5Uyn/glynpv8dJ+snMbylZ/K7me5lyeHmvdyuYr0=;
	h=To:Subject:From:Date:From;
	b=fVWCDJHNftZVkfCGC/8L3ENgKD5sy0e9NMo7xR1g0UdGMnr6IhYFap8oAovfKVM3p
	 giHYkuKcDtwz/YOt6q+ndirZzVNtWmKcl34H/YhR2NSlwEpN9jACOJ/9sRtYqDrWvN
	 t+NNKP5qNurMC6WvMgYQcNhSS53ogJECXywRThjdfJ0B89ytQ+oDGr37iAQu0uu6fb
	 amEknmT5QkcKGExmw17IpoiLpj3TmHP3LKlscJu6/HW2edU7ZFVFO1nY1pYfo5Aw3g
	 TWqepqhEmUnU0vCPcxnU7M6kVoAMktCL0EOKZHfvewXfNCjHTJZuIVxGvhxTPFttaO
	 VM9qhHscxt1Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69092C3DA6E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170450149641.7122.18122558351956057192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c87f11e0d82687368b15ce98083772b6bca90fe80a8992c7c5dbc4cc910996f
Date: Sat, 06 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704501496
