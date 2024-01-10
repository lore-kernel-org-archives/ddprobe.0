Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CA64D100
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tx18HllA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DC63C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704908296;
	bh=KIPZu1rJP0oKZri9rofbQ+9ErA3RzkNM2hBxHprKdM8=;
	h=To:Subject:From:Date:From;
	b=Tx18HllAdlCd/4Co7n5zNwg8IsuwH6cWPoqz46qfBADcTT3s612bg/w/9SQfIYRp+
	 Mu8N29awUT/aD3nf24tB7G0u/BZ6cSqf12RQY6eAb7g8VUCyILxLLnIzdMA1zAeA2h
	 lJwV/rmnWwkaJ5fjLkaZcEV9EAnj05btznk4XL+e40d2zD1c+ObUdpkjWoXI0wkjMo
	 fB3ypdLMHdUNasaH3aTU1ClOjQZBf0crofwUtnNbqNQMorrQ2L1tAC6PBI7Y6e1jxw
	 5j7tFeNfPezlEEo31YgHVrWQvViYnIQZkumYuXsTA7aesZ8rIYcpfPaXK3TY0OMwGt
	 ygDVqMXnDh9Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7191BC47073
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170490829643.26323.10675275452535909122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4ab0f12e24e38bc3a1ae3a40d27eab9f6c675be1c74cd3074da205553362e6
Date: Wed, 10 Jan 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704908296
