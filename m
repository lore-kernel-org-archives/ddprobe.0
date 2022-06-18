Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87527B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 01:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655514419;
	h=To:Subject:From:Message-Id:Date;
	bh=+yi4AKU++hZDCONo+Q5epYk54/cLTCgFMZ3o297FNTU=;
	b=aiF27lDq5drl0fFk+2CqMAYIHg7+KT3kRTTPjm4Ej86xMkB9P73iWsho4sM/rROy
	LUoO81Zc9OXq8fONkhYEmeXYaDJj9mR6YhKs5/hBLE+f10FxlaGhsWcb4KBCmVbjy7+
	vBJvscvZeoPPy8yrq8CSgIxmSnk39q1LV+BdHxuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655514419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+yi4AKU++hZDCONo+Q5epYk54/cLTCgFMZ3o297FNTU=;
	b=Ol0vVnBlMgchE4v1bvfI3s7/aHX8oEZXaSfPaGsmfgmp8JRAUv7vGbv2xXY71VJm
	eGRX1TLllDuytBSDrSJB+E/TP5fKAWNkNZ37XnQariPj65WXqwFsQ/BoSabXjYUhpnl
	58WHVBCN3twAvg6Ut3fY6RKF3HtmgYDqWIzOafa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174595016-d8f36c12-b40d-4c1d-ac26-6d043b183b49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8519e1720c4baa41540a8c1282a6c2a893e29ac994d2d0705a15570d5f498be
Date: Sat, 18 Jun 2022 01:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655514419
