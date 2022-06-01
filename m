Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2781A7E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 01:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654047059;
	h=To:Subject:From:Message-Id:Date;
	bh=WztJc72bNtIw2H7n6dRy+R4/2iP3Bm6ZrLadQOciXvw=;
	b=PgOUjrp1ItMxmXzNkpRuKl4KJoXdKB3TqfKIBcNURJo3ZHSDXouuaIJ10mzmascj
	4fApXudkffpFO/3m9CvJci8ps/qfATMVKYyIUQV4UzkeXQYVn3JpUMsnzvA0u87adNn
	2ud4LbiZXyxQUCbekgNXhYs5FvXNxXZ8iLB2Vx9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654047059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WztJc72bNtIw2H7n6dRy+R4/2iP3Bm6ZrLadQOciXvw=;
	b=gbemnIXFVxtpB0R7E2MBGy3gAmVy1jXELd4L2hqYDvShd+GiHHBNpsc/DnTaXbwW
	nZdeWGuE2WoflC0XoPfsOc3rWNIA1h6Zyap1PTDE7/k+AghTzSSPm6Qq0cMglEI2P5u
	HCifFJuRXddc9GjmMWJB653CBNJuFrkwyM0dBGN8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ce32d84-8497a4ab-35ea-489d-8045-d2c02cacc62e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bde779ea15daaa98434ee2bc2d993b7f49037a56c9db05555105a505859381fa
Date: Wed, 1 Jun 2022 01:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654047059
