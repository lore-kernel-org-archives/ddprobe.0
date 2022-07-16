Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339BA36A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657961212;
	h=To:Subject:From:Message-Id:Date;
	bh=JnMZaQHBXa03VWsCOzX8UUFAGUo2lvNZ8tIOGQPtCIQ=;
	b=No+RprK3O+LA0HkB1I7OcIzOvYhRj1Lpww+1HonwFnsEHXMV+lkdDj25ODdeCm9B
	VoC+zuoKwB0a/Elo6MYluo7lLvb13lnZDPjI8KUJmKgDasU37t+TXMKZoBqwayWLcBR
	4ZooJUKfrxPJqq4tEqJ7+/3kL8wXhBV/xyE2pIZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657961212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JnMZaQHBXa03VWsCOzX8UUFAGUo2lvNZ8tIOGQPtCIQ=;
	b=R+d5TCar7B7iZj97cmMaZ6AqLL3/FaG84yx488v33mcC14y1dX+9c8kjyd4YAjq5
	wgkifGUF+FGxB09gd1m0zTJ4KquX/KeQMFE/ubhdzqlnZDGGiIagrulIvX+wgF92fsn
	unI19UlBvesTxyo7GaDaFBP97rzVy57HAWOC4K7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182063069b6-c6e7447a-b2ab-49f8-9178-b123f95c9a50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7005c705b5e4241933e1c0ae87be303b0703be8decc7f186d0a9da223cf1beca
Date: Sat, 16 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657961212
