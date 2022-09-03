Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92487D88
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F5FDC433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662195653;
	bh=6Av5LF7/1XKAB3Q5Gp0pMh89EbmlEd+02GlJw/dSwIg=;
	h=To:Subject:From:Date:From;
	b=bKMn4POMChh7cDlH/Tlq6SrkO1d7o7iJEBer2vCiObU7D7332s+gupzHyPOMJl6b6
	 3UCPl0fZIMPJ9aLTzoy+t/SWAPZrPf9qWSDVklcTjvBvG/IeiaI7Ph5G7IoxwSNDq8
	 QZ4Wf6blOYWrTs507nt0baSi7nQoQ28e759BszZ6535Ggt4fv+wZfXWQ4F2dZvjrWq
	 Aub59F7rmsKP2Lz9BoZ3yzaD8euiQNTvJBS96xE5oTyhoipQ/hDo2pDY+Aaiyoeedk
	 z6tv7gHTs4pLnfyr2pz0IaVWQctB1mKBmXPlU2aEF3Qm/yQcd0j8NDNEDlMQR2K8XV
	 kFJ7tPhfDPeyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529E8ECAAD4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166219565331.18638.8232829482097380252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb31b24b23e013d6b8c2ebe8fe013e0e847709b0f21493fe2c9c3765da00962a
Date: Sat, 03 Sep 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662195653
