Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219314688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 18:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654455179;
	h=To:Subject:From:Message-Id:Date;
	bh=6QxHriWjxd6EyS7njxCDvlRmwJtDzdQKAb5ZVaw0qCU=;
	b=j4Wh+Mwf8TdPp0R9MBYO57ByhQQRGNau2Pq6kgh8gYGYRPu6GlZWfuetAHx6X8SH
	RRad2LkEgOC4ochsuQgh8wOnLUlKjxlr1vQdk2jXDj+WWmidD40o/LDrvqmxVlVz+K0
	/lCFvJZ7i2svgUXxN25LNiSOV+hAGf2bRhKIcK7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654455179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6QxHriWjxd6EyS7njxCDvlRmwJtDzdQKAb5ZVaw0qCU=;
	b=jT/Lyq0LQPdLGUPp9+K4q1CyE2kStjzns1jSysPWxYyxfXCa//LPg6EJ9Gu4zLaD
	2YRoclo3Bkhs2o3byJ4w9Td12IzapEI6IM8odFUok6hZ7yE9LfUBZnblcyWUy8T8ILu
	2Lbwu0/ry1+8zCmptbdIJx0Jlt/kO2pA/awrQQ2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813536985e-5e89364a-f421-4af8-bd9a-5bf6beefbd73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d87cebf81d4c34ac3331513881ec69e666d2b0ee19c2d2ff362ff96ed6dbd84b
Date: Sun, 5 Jun 2022 18:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654455179
