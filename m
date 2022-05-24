Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBFE7E6
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 08:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653380579;
	h=To:Subject:From:Message-Id:Date;
	bh=bbDKLNyUcqDOcshupvbchdmsNWiTdBhiSMua1N9SS/o=;
	b=eWrWy1tvOOVEdj5UHTJ3PLqq16MDDiKz8xpVLW2tBH6gs2ine6xfDYtM4iQQ0rwJ
	l7ZGz+rGTnG5E6GQ3NV647ejISAEvRYVohF0E3Vbao4BFiJ9SPGbi+2fpC+4ybLvclm
	x2seyolPi5DMtWECzm6r8KPrd56+RpxXjU0h45xE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653380579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bbDKLNyUcqDOcshupvbchdmsNWiTdBhiSMua1N9SS/o=;
	b=OjYFwLbz+4O02OdZ9P0oYKuSUXWIU3B80X4X+Q7lwTnKgtvxIu5n2BXd1e5O3oWh
	6aRExJxRyYHMyqIZ1m+h+gp2BCN6Pc0ViJswHK+pAniDryv9CVCx3CuMnE4nwQ+m0hW
	E+dvzi29ruU29zUS6be1J5Zag/fOmkeaYWj2K3YI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5297f91-7ba2c369-3a80-4459-a43b-cb154a1deeb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e15867e0b2fe479b42ba3fa5d989d0fe264232694d9e7d66a33c8180399eaca7
Date: Tue, 24 May 2022 08:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653380579
