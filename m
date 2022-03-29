Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D5629A2
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 21:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648589218;
	h=To:Subject:From:Message-Id:Date;
	bh=HTkYpKaDxxk/bVWgjSIL4QFQyLZvV5cPVLYLXuq0PPU=;
	b=lniOUvpwFIzqF2LhoYlrke0zqvMQR7IKfljMZ4ZGLSmu+AJjrgpX/e1nnwJ2E2mU
	3TbBQZYsfZL+Hn4GOQMYb2yw/w5pczKjGz+gF2PN5hY0FLRjP2XbCRkOvvg4viuLHzV
	bJcYV4hZ6rHK6xk6Y/ToQpYq+JvtsKow2795Boek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648589218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HTkYpKaDxxk/bVWgjSIL4QFQyLZvV5cPVLYLXuq0PPU=;
	b=huAqgdE2cPjZZA3nTieLz2/JxDrXkGTGDIeri9XbwzUd8I7mhMbmb8nK2ZhWOic1
	6lEZSXDnE1NYfDufUhpbZDq2GsNVWDO+qrhMrmK8ika8HHlRUMSDwahM9ywlP66BrQn
	kr//EJ4LZB8PbmCa15SDZ75/d5pfU/tLRGZol2wk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd79321bd-9a909ce3-b805-4584-b44f-b1f151805900-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 966c3d8f344e6386c8bf6f0e64d712139d0e4700218c8a03bc769ea4315834a9
Date: Tue, 29 Mar 2022 21:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648589218
