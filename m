Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E1B15BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 955C3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671828087;
	bh=wBQu+AsNjFO+muZ7hsKehbQGfVT/qO9dLLccl1mfVb0=;
	h=To:Subject:From:Date:From;
	b=Y0iurOaM31buXkqFNyogk4btyIZmQM47TpIZCmCwPKTEDGlsi1dGa50ZLLhQJ6vFc
	 vXiBC05uhsHin8KRVg/RshVtwwIbSS6uQCJrN/khfuSyMnVGb6+MIIW38Nv5TuxMzO
	 u4fADYGX5ExZM0YZn+cm0R+LSzX4zUPL2+3YWBTLK1cpS96wIcapVh/utQGCRcmVQg
	 ekYJD2P7lvn3n0x6T+JcJtoGnEVv+bsZroLb8la7Bo4Paf1VyQxbJAzoNV4Dpbl9Ya
	 DTkgg7YxRwhSmcgiOZuAA6IS0dMa3xynxpKW8G10CRQvo5IQZ1a1EgAtE7paY+zKJ9
	 nPriz27Yh/ffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEA8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182808740.3472.12777617598189397899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb047ae30ed286c72f6f1bb1967e00d96c73b4b486881ce7f95edc10697c480
Date: Fri, 23 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671828087
