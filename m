Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2852574
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5978C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688910428;
	bh=nfJ1szeDMkoz/3oX7ch6IZekilAxFoDW5GaIodo1Q6Q=;
	h=To:Subject:From:Date:From;
	b=spwqyL/NSkJfK3zQ37RkumgEpBR7m0ND1v4yEKXEJmkcLZCFIHpUTcfLlRT5ZphfN
	 vtizuDyh1LOkZOalatrx1Aqv/qNawKRdiHjQKmV6yK0aga0YVCUJeFaFyrFpUdC8k0
	 vJ+ekw9OzGYrl1P1I8N/35gdAOoPPbACU8AwO2cmesEaRCTEYDGL71g38wBbLPVABi
	 dtDXJQTU+fri6Z1zbOksxfOVjcqzM6wepnbODiUuLnZ9r4RyFxSGV0oewKwrCFCW+i
	 ptbYoNSlC5EfVYOvVF6TNmw9ulYTX/ZguA5gJtM21c9Ejo0zpXjBK4jy9ihaEbYUmT
	 5Ssx18o9K/WBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5165C001B0
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 13:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168891042872.27897.1111453310012640049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312072dce07b8b93835933e583b700edcceeae93e61ddace187019c317f2ca02
Date: Sun, 09 Jul 2023 13:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688910428
