Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10688813
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656564412;
	h=To:Subject:From:Message-Id:Date;
	bh=rbLDXL41An2mwZArQUj/teAvetoiylNQNW9dKpFCGFY=;
	b=CQfCa31s+S4Gij8a4WSEF4+HlyuG5M7HF1u+T9jzMefuXeZbKQ/IGeBA/z/WhxlE
	h/ND3U5nw2ZQjAV67SNqu4CeiCIaYGpwWlr1xU11hc0V+qf5oMN7+XmQuSTXzBRZItG
	YL4Q6Aq8YlA4BsfJT/at+obcdkAcsNVv9agugIio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656564412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rbLDXL41An2mwZArQUj/teAvetoiylNQNW9dKpFCGFY=;
	b=OrhPXNhdfzIfxy+XTVLrxC1YHtF04ltPAsPZwAKl/1dgNjmEvgjS/iWJGAcKzBJy
	rVOiL0YdJTYvX+vc5oxNIZlRZlRRQqX6vuYgsIWAtIN9qEUS6RfN03b2bCN95Ih5UCk
	EMAxtLNO1C/XlKLeqWAt8DDtJt7YmyoKFqdej938=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2eeefb2-425f8569-1617-4f7f-b1f3-c907c543994c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d7ab8aecbe29df8cb4d12cc0f65b3454daea13e8a32f7263554b673391c6648
Date: Thu, 30 Jun 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656564412
