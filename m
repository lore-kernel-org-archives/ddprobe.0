Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85FBFA3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658963452;
	h=To:Subject:From:Message-Id:Date;
	bh=DJuOPm42S4gZ3MuH3ETnnPwB11iVmhF+3W64irda0MU=;
	b=ai5dXK6Y7BxJADCBnlb+QYGsGOf+4Z4d6BKhteZqyr1/Ff/os0ntjWYBTdgqTOo4
	q74/dm+M39av9l3o6OPaG6ImRUDiXs5lHwC+kA0DxTQ4jsvCGjXUH40g3p9CVscV1N9
	FE5DrVlbCyaH/VkRoTQBdteQMzuZiZ8JUQaZMXpU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658963452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DJuOPm42S4gZ3MuH3ETnnPwB11iVmhF+3W64irda0MU=;
	b=e9tADr6PIOR/VzMoUi7RW9BM7KUi62KiA43zfRghpBzQDAICE3eY7WsyD/ZncuVg
	qY+FzmyeeNKlrZM5kRwoCkW9deANDaGlsWxnkRJkswbAqsguvWKKYGDpZLEP+igOWK8
	7c+8JbqEvIcf0ExEi/8e1N6NtfdQ8IpIRIDfU5AI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241ed62d6-eda054f5-d74f-48ee-bebc-11ff54659b10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 121c631cbb692a73aeccc4cb089786cc2ff5d779ad42f1b42b2215ed7afc2646
Date: Wed, 27 Jul 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658963452
