Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370C3D7C
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656596212;
	h=To:Subject:From:Message-Id:Date;
	bh=V+PdMXhypyUVzZeY6ZmGCftATP4qWZmLeJmFXb11xW8=;
	b=XRswWQQu5Wz68L3V7TDkhPBNW7FL/zBNZ082NJMff5FW4hkIdZhBCe9Dr0ugor+h
	8ts5UU0Xwp7xdpiIaT2kYedNT3QT4qDSCt9Zwc/+K7/mTFg3Ogafu5JBKzo7ARXUZcF
	4LG+wuWdvyaNokP/fqX26BJBIWBDaTc0FUPkpeNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656596212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V+PdMXhypyUVzZeY6ZmGCftATP4qWZmLeJmFXb11xW8=;
	b=j60l6x10jrKx1yTla6ItzGRuTNci07JOiioaJVAQ1vcAuF3F/qCx0n/sLx4gIwRp
	qPdcad+EfWNWwc5dZNQk+g8/hrt5mrTNN+PaPxgd9jGtPUpNfc2Z5bwu9nMEC2VAj2F
	CyDTBoVuuAjhl/w4q3nhzkvLte8jXOoOZF73KOMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4d42a95-65f8a693-2115-4374-b6ba-35359207e0ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b246c0f67aeae34d7545d490363330b1e59171437722ccd84291c41d562549e
Date: Thu, 30 Jun 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656596212
