Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4C12FAE
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 16:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A19C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 16:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676220245;
	bh=bAJjykzrKuoXO5zfQu078gqat6/uO4PxYuZGzsk2kJI=;
	h=To:Subject:From:Date:From;
	b=sZH/Ny08OUAVWioQ7chUq7alzBvTFyuCXWKijbU3AUG8+FMR2VqJj8wcXy9h1TdKW
	 hOq3vCijZsfoKw3YGbVtcee7NLIfIki9hd/MMU7z6CzTGNyjjlzK+68HA+BypQde/L
	 GzEKAHV1DvT0GE1olokiEuujpheH9BJtFl5XgemTiBC7yWTK+FJij0Mjs4Au2BvBaP
	 q1jgKHVaySBJClbYYW/EqGDfnFS79Vogh/ghqE7HrNz5ZTRgUJtm4KEuURjQkqlpaq
	 lIlhAOvcPGqIs6A7GolhGPz/kMFy5O6mzhQ5SiGtitc0k3siMuRX6t6DSiaoiQkT70
	 KTVz8iDVQbE0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5571C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 16:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167622024579.19972.6845927397925707916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3b25d80b16b7f14e8b52ce2b5096f2c9ad673bfc3f074b65d42a770e88ba7e
Date: Sun, 12 Feb 2023 16:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676220245
