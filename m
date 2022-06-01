Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCC12F2B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 19:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654110179;
	h=To:Subject:From:Message-Id:Date;
	bh=4jEN/rT8TNyyGNl4OAYUN/PyeDRJu8QasP5BO6BHYII=;
	b=FvUoHumbriKrL0HoJ3XpBsXcqVechpqqO6z3iRyhkbpaC31KxT8V0ulAUVJtXU3e
	xrexWYOc3/msFO/dWs33uloEByEoL7Hh4gqdWCubKBd8c5cV9ChMUE38KvLLwOg5fwu
	6O0GLzUZwFIA5LRPPh2gzCUPgSSxd58xGSGLsx0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654110179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4jEN/rT8TNyyGNl4OAYUN/PyeDRJu8QasP5BO6BHYII=;
	b=FbiTYSuKi8Lsd9lNCPWLan9cTd73jzQG+C5oTHl54f+bAH8wHuxVSSFipodCD1WZ
	j1ZaB3QFpewJeGAybYAyoCPbJKsP+yYGcU2n5DpZs/xEbdGD/63wGV9XI05wwddda9j
	OYCWx8FX3M4TAjtHVVoUFdV2XRvV6gQu+ZpAtfrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018120a64feb-e68f5ca5-6bb8-426f-85a0-b420eb4e5f13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8026e9b1a54ebc2812689851408995484bdff7927186bb9a30f22c7ded4bd6b9
Date: Wed, 1 Jun 2022 19:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654110179
