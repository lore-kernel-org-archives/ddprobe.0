Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2201FD4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 21:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654465139;
	h=To:Subject:From:Message-Id:Date;
	bh=0VDIcazvI+1cfKvVo2MBG1rCS2+9AJ2XTZNhCRkfBlk=;
	b=aYD67ctl+pfNTfP7dL02GYwyax752nnjj4PO/dFCXpoHZ6/lk/2adpu3K4nNnnJd
	IeW0q7uMbkbpXHlWdycL1Fe+AGB4mFct7CF6D4bHy6qXZ2299psPCf++tTlwBlwpHTv
	76ewR76vczG/Ehu3eI7mZm42u3QBhw2lJahyzfnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654465139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0VDIcazvI+1cfKvVo2MBG1rCS2+9AJ2XTZNhCRkfBlk=;
	b=c7HoBc56EOHFi4p7XN+Ymuw/fcpgwmyWUJ/pKG4DQzDj7kV35FZOVmT+QByf8e+l
	yCZZimq7WxPDVzjc2PmhMsd0aTTtWsuJVJtGUTqJAsyiTXPiaJlZdfBaHpYi19tcmSB
	f/00ycBw4aNSl2Mk+BpiOZ2TOyOm5S2i1B4VjOVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135ce926b-18a55385-be44-467f-8134-ae8598e2aee9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a39edcadc7d5802d6950d078a5076a1813503bed1ef090e24a100836484918da
Date: Sun, 5 Jun 2022 21:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654465139
