Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8FA33C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 22:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653084119;
	h=To:Subject:From:Message-Id:Date;
	bh=+760EpWpuqZ/IZ7LchDFII2dfmq3PdQTltPKzdqkniI=;
	b=KVe3vVvVpVeFtey+Gy+XAE8Gd8rzigPSlCp+EK4UOn8l7UxFcrbS9i+/PeO5BHbX
	8AS9YBoynqGR6ZZ7qLoo9PXL0otF5aiTwiusfENm6wWaoDw4oMW8/8qCeQBh5eJWtRn
	jSu8tkIaDUScTUNzDD6Ah3WbKUmD03KOYVt9sQow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653084119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+760EpWpuqZ/IZ7LchDFII2dfmq3PdQTltPKzdqkniI=;
	b=Hir6tZbngHGCgaBbIsnIrXC8JqWh/3v3of9FhwJox+8yxjIAThcsBIFiXfakZoE5
	SvImA0io9RPQPZUlCj/ygJu5nFl/7ePircod88jVlw9jGUlHljkxAcOz4Dg5obST0KI
	t7oDe64ajtrTV5SSVJC/dQPUzyxvL6X/QIYWaUVg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e37de0ff-22fe0e4e-7a67-471c-bea1-32be6f8e8296-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af0c019c0c1b0cdad842ffe769677a942ac2f3ff47fec661c3aa039ac669e8ce
Date: Fri, 20 May 2022 22:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653084119
