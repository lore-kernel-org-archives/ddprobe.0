Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4E781A
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 01:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB859C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 01:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696037768;
	bh=nehuyJieo6rmPJhCVcbS25D1+81v16ChyGTiV4YBgdg=;
	h=To:Subject:From:Date:From;
	b=bO2j0MsFWu3TWNZh8bdyatkpmNgJ8S3YV9CvKJ7b5l0OJLRTR7kgA+HJyUrLSOZvG
	 NAVag4eCpnlnT+WexprkzcHIA7nAsnagoqJCGh8XD9afYn6puT2agyEL2skJr/IMl7
	 yl7fDDC4hhOFL2hgXRO8e1QyQ1wyLknYMdbXbKFoVhmlptq2y3Be96j07zCF4S93en
	 zHLdh1eu8gXdydjn5SSnsNKETMSYqt8mdbyoxdiRy5zAmJBnu9mNM847PbbOcVbr/Y
	 2kMGBjrskwRByAfmcnUROZ0b9LwZgxJ9dUszqN/bOTHIDmF1nED3lKVLogJabZoX6b
	 BKsusqR+uYSMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F6E7734D
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 01:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169603776868.25607.7240893458510338900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95ad560829c0c85c36938f08040f83419f83f0a0b70fe79337d620c21b4d45f
Date: Sat, 30 Sep 2023 01:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696037768
