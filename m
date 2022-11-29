Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8B77C
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D242C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669684254;
	bh=7LwNfvlt4LzM8ucBFJ0zgdzl6YCR3JTeGrBIjF2uSZ8=;
	h=To:Subject:From:Date:From;
	b=EAR/OQe+wtumEq6OEuSCO2e5tvYmUFx2kMj6qZC+1kWkhXAv4Yy9CKgCzTzEI7jyT
	 hogD53owXPrczED+YipB/1khBIeUL75XzN6UYcWlbV+hU8P5deQznc+wWzq1Lv+PBI
	 U8HT9HTZPrCWzi71VNsudoT6V/yY/Rt/ok/NCuQHp9fwnul2f96Tg2Y1ulfsCs4xJP
	 6GhBZ9iHY55Lfp9Jsmk/yvPhpvOqFd9EAALlFJQWdITxpz40NfxZasdtRPN4tXVi2j
	 8jD4fpVTH0Z6HOEjdWO/ZGVwXCkqe2B1tnR2ihaWMKDeI5AIrvmhCWl0wrhMp90lvd
	 gdKsP6xRF7Low==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570CCC4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166968425434.20146.1698862023206120074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46b4376190e1318336437be5e18891e2d12e96a27ae5a9101f9b7ad5f874f8d
Date: Tue, 29 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669684254
