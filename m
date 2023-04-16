Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4501C10
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 12:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9772C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 12:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681648565;
	bh=Xe4PFtqAtOLAyATjcNsmPgLDXtJMB0gAY5iVqBaGvO8=;
	h=To:Subject:From:Date:From;
	b=ZYPrjoTUmusAamgpx62OWNNAattQhmDh1N20a27MeHpLwJj/bHyLd/znk2tisCEjU
	 uFZw3T/y/3T0NwOShYWnPIERNpqDCDAU5DWgVhlNKKy9te7fbIXRsJ2uTHkON+8tzj
	 FyT69Z3SDXdDGOveg0THvI4vafoPSAq9gW3qbucbfu2CQQZ/Rj8H7FjUC8cuhUt1FP
	 FL2hv2Mw44hazQb542w12hgyy1GMGMXhEor5q7u/OKSDxxFde6QPLTPdvnWTiJah+V
	 hYj49/hLSoiKB/xVlZbmVbetz4HpkcV7l1pJ28zSY1lvM2LkoGyS4Kgcow0poUbluw
	 MxOvAaVUfm/UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C14C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 12:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168164856575.30763.71858938401054204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4faa297eca5a826b4ec46232cf2e5c0fd4b6c385cc51841b87d7ec97328cba49
Date: Sun, 16 Apr 2023 12:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681648565
