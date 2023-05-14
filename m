Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408CB8BEC
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 20:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FBCC433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 20:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684096745;
	bh=b0hBGPLXDaN04XfrIP75J0LrjG8BJedhSCOM1D6BUf0=;
	h=To:Subject:From:Date:From;
	b=tvIzzlfqK6PJGt2CehMtTzUIjt5kTSJcXt4PPQMSNnHWzFvSprTs4Iqj7+tNOma5R
	 2gk96pI1/ErKaSZNKpScYri+5rEPNDRX+5c1eyonIIasu/7ynBvnswgD1XEroTXDtg
	 cir2zwxfhu+JFEumQtEhHSpLdr9GVy9faVDB5GEPLQb+OCtxgubpYxBRrJLG3lrgMD
	 okQj8yLkT5vKxfmnyYNLsieF/VGK0L/8F6nrlZJV0EXg7P2b28ISQLpppUFOk51hMI
	 666yqx/bVI+4es2p5tkWbGCHUnBTL5n/6OWzBUmbQz+nch3hNsKU0RFkuzFZBbkQX8
	 oeuV9DCagFMOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C420CC77B7F
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 20:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168409674576.11692.10370116726860389900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cebcc827286d403e821f9a9a093a73a3fdebf01cb41a8ae753428691a65490b
Date: Sun, 14 May 2023 20:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684096745
