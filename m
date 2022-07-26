Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59001801
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658876452;
	h=To:Subject:From:Message-Id:Date;
	bh=7Ku8/Wsb8vAiOcQ5oArydWd9qulT+wxuTo6YdgdURdk=;
	b=J9jy1+UvykPNyMKwp1kT//4tfN/wFpmBtcz5SGz2zLZiIG7YDEe4jtdf/4mu0JJ+
	QGioxVuAl0E/CVXuKW6K6Q+pILfMbhBfkAMth4s1ZnwCmSoiC0Yd0Fw2RlxUGYzDi6g
	e9NxPtasgFdn7bT/Bu9Ur4PiPQ+VKz7o/1urzWdU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658876452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Ku8/Wsb8vAiOcQ5oArydWd9qulT+wxuTo6YdgdURdk=;
	b=i2pzrTyA4Q/+qJ38y/cgYZvhc8ygIpV7S9xHrnV7dZvb8eHVlYDBeBMUQyfX1LRi
	PVAdiOhu3kYlhmEwQvdodanctQe7MoUBFfU4f0qyQzePZ4BHRFsPfGkANb4yHOuYIYF
	4TkJfnEFne784lm4kr3YZWP4/GYK7uukOSvZIgS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823cbddef4-c8fd4710-9e15-4288-a891-53f40f6e8a77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c17635d551f6976e28a41797486b6166c63998ad9031fc7c47b180aeec461e4
Date: Tue, 26 Jul 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658876452
