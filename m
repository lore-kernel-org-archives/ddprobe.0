Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4956D1852
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659877252;
	h=To:Subject:From:Message-Id:Date;
	bh=TfPG6LfewC7mGUpdw8MzDZFKjq9kQcURahP6UOD1O/Q=;
	b=EHdXYyJHzi/VeRU6AjWuKxwVB162C/UvSba2UqxS0Nexy4bTvJ//u+IiCQbvWNQC
	Ska+mtU1VixghznQs3sjJm8xmIokHnN5BXscuoF1fFuu31UtCauu+y4CeiQ8bQLHioO
	0TX6zvnAoEZQGogcIfeTkTmTVvfMQtcyh/J8un3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659877252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TfPG6LfewC7mGUpdw8MzDZFKjq9kQcURahP6UOD1O/Q=;
	b=AJn40wrZy+hdDuFSGJAITanrfKNRGrogkC5j5eNoNCnvV7cTqhlJXA87nVGTlfOz
	79HqFf1EyKv+UWoSiClH8wYx5TTKb1NGHKXtxdOXhuQJzYL66ZxvsusvIJJDSy+eL8M
	ME+loIkq+tD3/k8tY7WEyI4NgR534BEdLxtqzmNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827864de10-3053072e-24f6-4631-8cd3-7e10ce1f880e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79f66def09895f057af4be8c048c39a949a860271526d5dec11ea37abf3b95e0
Date: Sun, 7 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659877252
