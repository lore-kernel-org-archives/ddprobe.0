Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68C87E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C33C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671381087;
	bh=Vuh2QEafw4iqTdYeFPlX4PuRLOFY5zT5ykydcpbAYrY=;
	h=To:Subject:From:Date:From;
	b=BrrbeNgLgOA7Lh6ZGEIlbmbSs3EFcpNfBrcE5J/lciQF0Yv0Twhk/v1/Uw2mNlLFU
	 wSvoE1NIw2UOzULzSDE72rC1fkDEBwf1cR9dymrzsa3ZT0mzmBFN6Yj4fGey70lckC
	 KHjDmoXzXh4WnZFitBJGn3rqBB3Mh5YJol3OPV51aKsWnBHS4WKdbJH+yMe41zCIcF
	 AJs6+68HaTspyPyD1FGl9slLLBg09RoI/ooUS7M76pDJwoWRMrITW758uoiiipF7DS
	 PpkqS938M7fscLMOueg+DRKElZgQAYkfic2m5kPgl/sXyxWuvKEkbXb+Zp/fPBkdlo
	 2SPyAprZvhGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CB4C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138108741.11080.3213662623694044497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17bf389589782cf850e791684a54f834531117413fa37e8bdb0a13eaf4a4118d
Date: Sun, 18 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671381087
