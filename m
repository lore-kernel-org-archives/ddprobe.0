Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A285110D
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 07:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED840C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 07:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676965146;
	bh=Tl36R99/s/BL1VQUR13Jd6oJQ6UzVTkZPqCBjGu1Fi8=;
	h=To:Subject:From:Date:From;
	b=FJzG4jJXp7cqosqir+jqJqreWY/mh3roxy0j3Qd6qGXjsbi9Sss48Wc2PtmkJEH+x
	 cRMgdNKZdecDM0WW0tA8GlmLpV9WlR9rutuGMKGJ9irygKnaeBlSWAOIL9EBynxlxV
	 gEbpyjSua7QrjlnkMr+HyKAUv4bhUFZQhdqL5PEKT1p+ttmuZ/OP9RoBSjDEnG5uVx
	 EjsV37m0MrIC8B/ZjOPa2xZ9ut5u2JF2OmBLGJ3OmmHVqFoKs5mlJEY47IqiVQ5CUE
	 JfuMyl9A/Y4Ze1/lOHHAm/NptrjSo7sipIyPHIsvts8sD+5soPEXK4uKyrN/SOQgb5
	 wkVsaIJM2q/Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D152AC61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 07:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167696514584.17103.12455995679750906543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4a6535079a324ee59f4a09b80ba81722d0f7454762870c75d3404228910d35
Date: Tue, 21 Feb 2023 07:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676965145
