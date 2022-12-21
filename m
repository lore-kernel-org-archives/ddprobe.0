Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26921FD2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD1FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671617487;
	bh=yWCLYLm4H0z9+SG8qtSebs1wxRaUuNzTjuoOl1V0hFI=;
	h=To:Subject:From:Date:From;
	b=Oyop19qtUyLOQ9DnLvSJfnNOfUINYklPLwHaTKxBotAxHR/GXDnbRrt5LW2OHTe+8
	 Svf2A7xXDiLFhY4pmTPVTim1UAQf+luGD4f1+ccSPBEfPLBU2DHIVmyhOzPzj9GooF
	 h7dazXPmrpqebkr4d8NPnrZQq6AdHStr0G1mtU5TepHPIHA6zJliJoozh/19O/23Ff
	 OVEJKjXRVr4OASSzYO0nrF+aOCjTXau0LgnnZsvPwOmSAL32I0Z6E7AFR3M/8GVyCJ
	 wCSMOv0t9adgGWW80VeLzwzzfYmawNX8GNNCn8N1q9cyEVIeyUk45diEMcP9KnqVAh
	 WtttLE7HAyGpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62454C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161748739.26193.809932822796630409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b6eea3ddc260e6e6dbf22a5f798ca21a3f991b2d6af179d78776e2e5c1126e
Date: Wed, 21 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671617487
