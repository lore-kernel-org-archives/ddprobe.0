Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E511378
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C78C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663414853;
	bh=ed3koaVCKKUgqa6G4SsXyaoJpc+xx2EfDOJ4W5OiBv4=;
	h=To:Subject:From:Date:From;
	b=nheXUrDfgYA5ksW/Fz92K3MgYDnwLXbjgmKGfRsipb8WXNU0IBXuo3A1Lkd1E08Un
	 DPdAA3gjAJnZp8SxAkdxiF12gO+vkwJn/YxhQV5E8370yAkegBZ2/P8o8XtrNK/bav
	 sZXugNdTLnQUaDjU1J3c578uqM69GEa8I5EZK0NXkwUIyt9VtysPwA3ue3meURmJAm
	 xL+/0xNGB/KsrznGyufD3wt6CUKFJ6rpyro+8HPZsjbmIRu/kwERi4evq/ZwxMm+pN
	 RUcGCefyEQlY/C+1aPX5zx2/Tx/HEotMvtqGhgy7XUFjsuDm+S/iGPbEWPsuZlPO/L
	 cBHYxLslXyphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6C8C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166341485334.28301.2633357043958812362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fea6f36ae6766f4bf8c095c44a3318fb9520d2c05064d5ba413ec4efdb8f1ef
Date: Sat, 17 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663414853
