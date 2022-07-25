Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F331375
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658753212;
	h=To:Subject:From:Message-Id:Date;
	bh=c7YdzT+B7M0ZxaV3IKZSQgBjU48zReb9ZqQg8Mo823g=;
	b=BHSscebs5I7d4ZUsu1W14mQUGOSymWJM7dYeG097zr9aX23yuDPV01o15ryUcOW1
	gM6143G6gm57CHj5Lp94+uwycbd7H8flWDojSH61Tt+t16DFY/C8KI+RDiTjO2lYG++
	Za672j1u5YzrJEiXvt37RFnLm9WSee4b/4hmAdI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658753212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c7YdzT+B7M0ZxaV3IKZSQgBjU48zReb9ZqQg8Mo823g=;
	b=MeDfIHECGnBX7NFNa6wM5g9V8HVsGYec69g6O0ME9kqbsnfv/PIHcfA10QMnaTR+
	6qd0Evff9H588VxB759TA/qjAXLPACvBkJUN7KGLRj1xAymoG5yRtZR6ZRp7Xq925um
	BTyAr3taKucdHG06MCJ+oPWG13dFUQj36KO4wL0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235655f83-0ee0d8ef-cad9-4806-9811-a1a49d07453f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a88f8572c17dd4d6019f295038316156748dea52685bf388e6e3cb343c8c19c
Date: Mon, 25 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658753212
