Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C05442A
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7033EC433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664922053;
	bh=YNlbAEQncE0428YYMw3BZMr7PKlnRkQz2Y55mbnbXFs=;
	h=To:Subject:From:Date:From;
	b=Cn449+CTuKrZFXD+7krPy4E0pSLLZPppU63ndiPNmfUe4DeFPH73Vm5faJI4nwuKg
	 /Kxz/1SsrfJho9gjteIGgJ07Ng8gK8okHPkHOX/ZkMktCMDTA7P7h9+3j/rMeUqMWa
	 /MbDrsvohg0ZzeBAxRjE9twy4z/xYXt/CjbujDCVNOnxHuj4gT6xy/qBY2nmUJB2gO
	 cMDu9tkzBHr8p2Y7wNScxb7M7A7tzGtg5O/9Mg2V4pWTHAZn5MBKDJVTq8E0lVDFLR
	 QEtk6i1JHaabu8WG0BBZ1cQm/zMs+qXQYU2xYcAqWmDpCEGNrhfElQnQnAcCh7niXh
	 g38Ta9jqpibUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FDCC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492205333.6588.4719710475943450782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ac68a450ea1d0e257878fd7bc1ffa598de9c4d67a4d0a696c7469936d2e8aa
Date: Tue, 04 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664922053
