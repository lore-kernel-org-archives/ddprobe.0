Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC841363
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEA9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669768254;
	bh=2xDotEHn0CrT4L/5IkZPMq9NUvkcpBRMSFMoqpCxlxo=;
	h=To:Subject:From:Date:From;
	b=fwQxUKL+BDRyrzpyqF4QPg9+UlDUa1cqx9440e503S2pWqWh5GGds8dnu4jt3fR4W
	 74kE1XYMLGS3lOyzGdbdr+MsuD0PmDeit4FUYNKSL+xYYR6FdiZ/yYOuDgUDTGjSmI
	 6uwoXOgIxuo71N+awG9S2oHYL8Y8rwFK5eWy8KmYrbFw6kbm+51knICZ434/KdpmH/
	 BLlewg0kmpPHVUcn9XjrikPtc6F8n9pO8MY9c4YdX59Opv0fLddNcF/3Zsvu1CO3Dy
	 85w5M7vduvsw39+wvvNeyo1/zd4ayYKSaRD63anplYssPv/SHPUtmoo4l/auChw/3+
	 opMUPmszMNqsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52603C4167B
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976825432.14289.11650452983104899310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28184da9cfc7206eeb5fbf7ac68d950553ab304fb534072b2309d809b4e43e1
Date: Wed, 30 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669768254
