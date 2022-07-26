Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1042E805
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658834812;
	h=To:Subject:From:Message-Id:Date;
	bh=nReogQ3np+fJDCI4WTU2MCMxxx4hYPRA5LYjN0FRAlc=;
	b=d5TibQa3yxBCEyUAW7ItYYtdgC8Tsi9STidi9esuASvQ9rGxOCxyd59nDBFE6GR/
	2JcOPo3OeoQA+jRZhi61Jc6ZWZoS7f8D+/VpgNmHMYFBL+P2Rkx5Q/B6LDUYwIR4j1L
	ODaX0WDMe1YSpF1rdECBrfuXUSXMaef1b7hG8Q0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658834812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nReogQ3np+fJDCI4WTU2MCMxxx4hYPRA5LYjN0FRAlc=;
	b=ctbcN14GkISmi/KCVZP/1Yr3dFSs7mXwxj3J91MihzUHhX5VuUiKGoxTWn5em20T
	IgI+t6TDVP3Kjhi7WNek6/WZCb8HluMGND+dmjWny7M8nvMG5G+imLlIjUs6XnW43fB
	BCLxHvZZs+YSPtSuVO6O/gB+37+8S+4Tsp1vnt48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a427d77-ce31ce8f-dae6-45f3-9f4f-33f92c0050c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05c93a5206b379c496fd1922f9f6133974af513259817f60f9618ef1a487f900
Date: Tue, 26 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658834812
