Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DD87B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721A2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670829687;
	bh=SlAAUpV2K50/4yvjXcSiow4wFXyFBhUWkyPoT6r2M9c=;
	h=To:Subject:From:Date:From;
	b=Art6hIKwt3LakouGtboS6qiROT/3b6XZSRq72jabBcXtLYYHmieEWbeg88ZwyYNcB
	 At4/aWlP/mK1ibendMplnI+Uk3CRb4WmbCg1CGbr9SnCvjshye37eaQiQpy2nUy4ez
	 MN1sfTDT/Z4HyS9sF2FCQJqqGkq7ONdMgXhayRT6ieWafXXP5l2K7do4Y/BBd/o+fQ
	 tYF0umGFiq3tt/WSGBZLKPhmbNOTTnIBcgPS7kb6aVOGOV3WrrgzZ6rQZKdy539paC
	 kF1eYhmHM0pRSPqGdPozWeRF2rfD8HltYdXD88p6e6qtnHp95vSGDOMaB3R3ALa0zv
	 McRvXrNuZFv7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D560C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082968737.13913.7645821877049250459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098d7b2a2c958f5c010c21829d28c761cbfe478ce97b4b47d1ec187ceba15668
Date: Mon, 12 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670829687
