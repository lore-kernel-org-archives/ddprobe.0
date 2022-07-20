Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C538747E
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658353612;
	h=To:Subject:From:Message-Id:Date;
	bh=ZMC2dpD2Cj4gNRvA0wMRxURNQsZtp8pqqLsIrQp6Nzc=;
	b=FLKQ7XGiYAHv9kqAciise4bVw5dGQ02EM4LXVPr/QjFKMn3C/G2dqWW+J5PMSmN4
	wko7eoaizrjFTZEkazM5q8JCkQ6bprtLMUsBE2ou0G1F9TcTmrw2q6RUMb8YOVbVUVt
	xoRaJ+Dt9ye5qlTUH5yEQEM9E55lcHPlKaULSOog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658353612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZMC2dpD2Cj4gNRvA0wMRxURNQsZtp8pqqLsIrQp6Nzc=;
	b=EE0Uk3FRRWDeLNsYeE9QnAB/HJxCAKFddMvg/oxQZ7Ekji2Ig1C1+EZiFsycFCD3
	HqH0wmcJTQBztf0sTMnEIcHhIdCPmKRi54V129j/tmczA+tp+OnUEdSnipasXroK6z8
	QQvuQ1q++34QfQtNplA6nGM+fC6YSGVCqYfsL0Ns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d93f5fb-69417478-9b7e-4981-9cd5-8448af9805b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 944cdfc331eb3e11959d0d81f7413148cf8d69e46fd8d17709ea5b5328a7c662
Date: Wed, 20 Jul 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658353612
