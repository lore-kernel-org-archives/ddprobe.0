Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C8CEC6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 12:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654257659;
	h=To:Subject:From:Message-Id:Date;
	bh=5dMX0qpRDWb9K2aHzdhckMhZMyEJTCm00NGie7oNt2Y=;
	b=Jdfetdyg/5NVh9oGGIsrTsBC1/LFCHgQc/l2X01pOQTXC0Aj3eLVhnXSd8WDp5iy
	6Fz+giLEmlm4y+VvY4uhKM6tZs271pEECQkZxS0Ky+6BUTwTt4Ym2wEFM6BBWG6dMnu
	JvUX8voDh87BNwBZZgaz+ZQrZokYUnsIqSvYnC3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654257659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5dMX0qpRDWb9K2aHzdhckMhZMyEJTCm00NGie7oNt2Y=;
	b=Rx0r04qwqqkN61UUthPDEOQL5dc3XdXyO/MODrv97NdENkkG2siTNVOf7pVz0c5g
	OdyLYydxp8Zy2REiKhswUsOEHROuq1uEY/y2CGw7Iq/V04DW8Xm3jEtBC5f66XX7ukA
	mN7ujBaqFoG+psdo+/dTGGtpNnZdwziOtJABQWsk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812970ad91-80b4f165-cb87-467b-861d-c7b4a53d895b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e466b68344323c2a8d2ce7edd3c2a6b2e738f3b2969843db78bdabc486b48567
Date: Fri, 3 Jun 2022 12:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654257659
