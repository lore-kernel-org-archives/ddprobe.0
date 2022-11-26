Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F427E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 849A6C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669435254;
	bh=PNZw4XYL2oYIy7Rb//lSrTr/RqMR94MvdRlSg7QQpWA=;
	h=To:Subject:From:Date:From;
	b=aRM5oBgHQaDLjocn+fFK6G50zmvzbm0/W2vdLhjFQCf09ZEuvuI2p5OCoA2labCs6
	 60xKds9lf6KDQaNBBMSb5o0E6q0UB8bi6gUMgVeBuau2Zd1+SrLWxKAe9spa+Z8faR
	 O5A31TS9RBJuqvq5qX26YELlXvsS4UMOVIITUrIb8VS1zDPe8NxJOhuFbODZoIEVhC
	 n2fcxZbGKyvWMh4Urp6wYgpZTOsDZ5UNvsSty4YdTnfT2Q8jQ4ygk1iEb/OckzXTjI
	 ewWylemsBlbm55oHZp8R/2lMe/LQ7/Gv9cZxDY/iidB6ZpVIb6BhPXKRvue7lRHVRb
	 jlfS3e019kuNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F0EC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943525440.30097.1557731244316532825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e341d6191ca514976e6ae6bd634b589ca7a22d290aeca5848ca279ace89f9a
Date: Sat, 26 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669435254
