Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B4119B
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 772CAC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669539654;
	bh=2kASW7jAdIDZ/8+z/FqGWJl8WcsLJhRPcCPNdNfFAx8=;
	h=To:Subject:From:Date:From;
	b=br6plpe4Aln6JWcf39w3WOWe+5286vRqGOktj6jbhRMdfViGgtRhH2tghnVhWCaDi
	 3RvmtIShpxDMsBuNoxQ8xckacDZHY0St45x9oXIC52oLP0e+hZO50/qX/CC4zYqEpF
	 0r3TvFXFnc829TMVA2PSpDq1vrmqPQjXbbBGszRoO/GU7j7lNzFO3lbZj1JL8/BaBH
	 HJSRF2PQUved4Ex0AbuOyigqh51f1yfCliqaMz5lTDcNfdVKvYNpT8ex14hlDburCp
	 jXBIXqZVultJY/JjsObvAjMQM6N+0/784BCSX1iAUzrqQ8oU+xE8ZRgGbJGemPO59d
	 zHZmqFM6qg78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6A8C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953965433.12339.10703925792195921312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e25c3a9f140e611dcf2d0595645d6c59c44718adaf6b3d9de069588d42fb336
Date: Sun, 27 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669539654
