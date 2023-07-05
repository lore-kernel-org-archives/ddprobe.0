Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5503FC7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 08:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E17A6C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 08:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688544368;
	bh=eCLiaMJvcs0KSqGEomMhAxbg4bvw1FTtMz2JlX3OaMs=;
	h=To:Subject:From:Date:From;
	b=o0eSpvqHFlVhNzXNwBZ8O6VSaHQNNoYXf/Ck/FhvGV7JwLr6BGhJLuStta4sF4cVG
	 3JeQSfbjtnMcQi2gMhaFt0fv0OumxH2FDgmsXwP1ep0vF9MyJz9RCKzL43TOBTAaii
	 HimLLg7eMN3VH4BTJvibppjxTGXuZU0DyAcVPPk/dCgwa0RHSUz+jji3Ky0sNHNdrn
	 d7MmNhbGmD69U3tWybvdHGaJ/yaP2FdD8Is42qHud2CRaNmQLqRNt107KeLvg6/G0d
	 xpuD3sw9nM/N8YfUn7PnPDUwVDH877Y1nnlc1V1dxEuC2rxnDxr2zyYpDnlKa3TvpU
	 /uxxzLxKrvHEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEDBEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 08:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168854436876.10279.9235351815422857822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93faca77faad0fed3df2a92e4650efcdafa2df5d5e5158a36f298cd7f5f1e532
Date: Wed, 05 Jul 2023 08:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688544368
