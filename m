Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A013362
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 07:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654067219;
	h=To:Subject:From:Message-Id:Date;
	bh=e6LSBz7nVrZYb09qaiFjM4L6ZZd0/phIG2nBaMAQj/M=;
	b=fBhqiLr3tyv3YckSnSAyhPNzwYNqnOOfCUiu8CVyd84XUvROe51I7NHke1srF7yR
	hx2imfWYZZtqEGKIMBCrv14EbEX6UJtT6aLfGIN7IVZrfYX4iMx4Kt8uX5mQHXmW0Ij
	CB/EzgiE4PxBeVpYFAxFYflhlJ9tlNCEISD9DqFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654067219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e6LSBz7nVrZYb09qaiFjM4L6ZZd0/phIG2nBaMAQj/M=;
	b=hcs5qTCRhkwccewzGUGn40TNPVdR9ftAtOwMQ3W262TnIJYFODt5pgpBMSzRn/HN
	VM206OiqLuay7W5fxJVdHoTsrdKPF8Y5u8s/ZHV/nUepHUvQ8CXMeemRJmcnl1s9njE
	HJyfYmKdn9ow+/Wpu05Djr/FNOgl50vT0P9jkVrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e16cba6-31ca6ff4-03e8-4935-a054-35d8cc1c8262-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b121b8ff9c9f5df9d2f5bfe1ea79c8765887001127f502ad24304eb1d715b64
Date: Wed, 1 Jun 2022 07:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654067219
