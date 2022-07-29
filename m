Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E9B33D6
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659078052;
	h=To:Subject:From:Message-Id:Date;
	bh=SDopdFYrneqFBBfKgjmDoBAB/Pyn/gCKVk/EsyCv4sM=;
	b=kkQ6mbhYJy91EgmU0pVsoqMVrx8V6WB7yLOrlojevUviwX0aWMvjyx3q1k61p7Rh
	a2NVHP/SpbIAi54BbLL3HKXcOO9CWuipli9Lz/Bl+3twSaSuMu0aLjaV9SgmdI9g9rY
	PU/VaoLd/TAedqkjHOhzhH7yMAgRXoXuKMRfok2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659078052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SDopdFYrneqFBBfKgjmDoBAB/Pyn/gCKVk/EsyCv4sM=;
	b=J9oOMRxWaoQ8k1ddsfsJibYAusYInjtN04W7NgH7TFU23nbrqXmz6SdhW/6sw+r6
	0llqV6XLFGfGWnamMRFGG7SBNZvkRcZMnXpIUGeX9teyqUQMsZzmdAc4SduwIPPXrFv
	b6wK9r7F7ohoc68e3bZPKQGKxg/gxzqUDjhxS+TA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248c20afa-3060260b-4d9a-4685-9cbb-a18af8ea32b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0ae1cddfdf19effc929ebf161e0aed135f55ea9faf6a45f3fa562722f8f14dc
Date: Fri, 29 Jul 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659078052
