Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6957E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7288FC433B5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666344653;
	bh=rn8AHOgKaHqt7rVK4jM1mE2H8fxXd/t5blMhVyUQQnM=;
	h=To:Subject:From:Date:From;
	b=hlsCTbkGjXLznsShPHqMrtDk8wcGeJAm3AlcpLY2gLKLSa5kpWzo+ixlrDAu9dP0u
	 5DQRADdcCZq/cSKE+4iMiuK2Rb6OQNZtLNLoYA7A6S1o84v6CKN5vRoEcdUMasMLS9
	 hRPn7LNBiajSBTLjCB6olLfxzVInGbC1o+5RvoP2p32Ql6kTrGWIz7NVkAtpEt44Cm
	 2gnzZjJLSVggxrb+tST/O1uxOHkm6RvGocHRhfIFi/QodWjtnIq7I7EbZx1kyk/lIs
	 9fAdOgWrxZsUMIxSzdvDsHt3Zgp5AGW7QczDv/Ib0h5aDcR23Gtv8tCywpdAy8Q2gt
	 RBE2IyWfJeizA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56EBAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634465334.10986.10578895775638515336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9321f68fc09c007e75a88374b2f8cd3a98f5f1635ae3f74c20f17dca2d8294
Date: Fri, 21 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666344653
