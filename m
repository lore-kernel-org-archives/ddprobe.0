Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447DD30CE2
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 14:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58F6C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 14:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694788508;
	bh=OSKnnvYGDPczrzKfDF4eNFxHnS4G0/s41VQYOliLFh0=;
	h=To:Subject:From:Date:From;
	b=DRkBnRs33MK4WQ6CGAn6Q4ctND2cIfLxRbzyph7zYa4arnJ/sbbXRFZYEZrgLlyO3
	 oT6neRE0fXfAs33h7mbmlCJxBJ0ziLRehdtv2K+NuODxBsHTEP+6OW8g99nZSwQpAD
	 DNKKcmeCbfQDYl3rtblOOTa8aaY9ZJL32b3kGrmMHB57sobwy/gnUPL33z4h2f/PPJ
	 UrhGGVPFYqQoFETXv1jIixm+V+lx8VdkPEv6sYIJIfdcHaU1VuoemAcz00Zp1xVBTl
	 p9mZVyGbhtOGFxCaosHC8rooPVgrsxcUoeiE9ce11RhivqrvUDWTJ4uDGDC7C5D7SD
	 uMvByyKT6IZkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81D8EE3F2F
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 14:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169478850867.11166.2573753917347978876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7bc77f4f84c4b56fc44ede69b0ef781e54634a2c0e11ccb86e613e7dd0bb41
Date: Fri, 15 Sep 2023 14:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694788508
