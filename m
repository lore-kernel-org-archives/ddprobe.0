Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E3217F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657868212;
	h=To:Subject:From:Message-Id:Date;
	bh=IqCLVxCKZ61pvM6HQDR4SrTgSls0iicwyPDIuriTQEE=;
	b=gpLb3Z3/PggZtYKD1Fia/XFp2bCVJf6ywXZaR2HCw7FX3R0q0HLrDpPeEJnXOFIj
	8kvyIDXW+IBgNhZiNfzK8IXX39eg7hlxQ/+1J4weawFJouAxSX15ZONX9YLmA3zRwzQ
	a99rQUOqEq/t9OWgHVZ/WS2ujrUpvawPHwJa0vfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657868212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IqCLVxCKZ61pvM6HQDR4SrTgSls0iicwyPDIuriTQEE=;
	b=gMH2bp0oaSULS83kjwpUrwJavlOHCBaULMHCjJp1a4Xg6i72odVK4wE+Ic9tDJa4
	PLINFQuOzxdiIg+b/5WOZmEGq6Feplk7tHyPWEkZUepRA6jbmGT/RI+y622ER3xV15Q
	uHQY20N+wkqic6CT5GLmeKOFvnkwn32B6J6DpKBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200a5583f-e39de6ea-81f9-4057-a09f-a062aeba8182-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d96f2cdb3b79acfd23fe8244fc238c754728a5780fdbf944aa0e154014e7c825
Date: Fri, 15 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657868212
