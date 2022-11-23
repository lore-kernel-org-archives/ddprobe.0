Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA1B7E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75841C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669176054;
	bh=WppO/ccrxlyhKCX0JpIV5myycyroAcwoHr1jtUfQ7AU=;
	h=To:Subject:From:Date:From;
	b=i4ZpxybiCI1el4PBP7POOa36HEsvoaUxTlf8UZdkmP6bHQ/+7oToiva0tQTSZ7gX9
	 o1u223GhZry/7eaBFqls+7pwvzQ9SgoysaNW+o0twuCqf28OYGpBgz49fWxMFHHtp7
	 9yDSPUQc1Zab+wRp1f2+wn/PZqntUVaSITP2BEeyjMbpaJKKL27OYaHaXJa2gsUcR1
	 pVylYFq/qcljMx2RRYPtPl/IbvKxCtql/hvkLK5DeGN3JViE9QlpjA6kukdIkjdjjZ
	 dhKSGNTqclhRaOmMtId0TAgm6BCqv/rn1QyphnqQd92i4WlOReARipMYeKD3JsCZfu
	 nUOaEd1KNO1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CB5C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166917605435.28266.8607550757592932318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7078414dcd3ca50d567a390436098d64d62c53c5fb537c6ba244169a3955bd1b
Date: Wed, 23 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669176054
