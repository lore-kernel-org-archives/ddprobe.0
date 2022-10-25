Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EBB7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 715BCC433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666713053;
	bh=ibDlVow3nPCW5xEs7fO0yqYMO44jc7WlyAnr7OSvddI=;
	h=To:Subject:From:Date:From;
	b=BpVzOu4J3StcKkSNm59UhjX2sbPiWhx9kuLn+zRzK079TbGU2Y5SPh0W6FJHK3Q4C
	 6cHWZVrTTh+wSmcEidUtgIT+9AisGmu9dHlq7xT5q+IxLiIbzzaY8pkPpNh/hkIKbn
	 9AjovNyKwtmp6bAK04NLcCCoNtRhGt/2fqcqXlujiMxxP37eDOBA+MRDSrqIYJnlUt
	 MsD0zqCiG1PbQXbEgaEl4sINuUDDjsMkT8XCGsJgH7XXvL5vVLEmu2UHHV63epfkYW
	 12FfK7FBGmc3EjXQK4fbQrBxGHqFwER2OuRrD0qPQhI9Ye0SYUQljHSsIXV9fzBBCf
	 HhmJzKBX/KSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528B1C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671305333.28489.8987928726273709155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a611e278be74378f5182c9d45ef07b5a50b53402de378ba9096cb5af55c85572
Date: Tue, 25 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666713053
