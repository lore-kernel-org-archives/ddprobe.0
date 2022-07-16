Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFF8367
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657938412;
	h=To:Subject:From:Message-Id:Date;
	bh=7DUcR3+b49xh0sVxzKLJcjC6MsuCfdtb4S5sCmUOcK8=;
	b=M3cTbNWlHjSKAqbMiojG89Z8FhmEe4etWEJvpZilVorPPQnoXcGGrT2hRFMoOQ9k
	Kt6+vyAIsgJGx9OSm658qCcyGPm2LXXY58awRviFz6KueBhxCLjFQQoD8neKh9Eu75j
	lnFR6LB2KI9zI5rCneJ/MwQlvvoNF45JF8IyMUQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657938412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7DUcR3+b49xh0sVxzKLJcjC6MsuCfdtb4S5sCmUOcK8=;
	b=jrP3NIqhLY3EUFnvOzmQWjc6Mtn2jPgh105jP9K8oPj0RRvZRnAAvNQ7Xy9S2sP1
	zAONbFRDV272e+OnJK6niaUoZ+yX03elhmXPaXnDqWqsG9ubK+NEEA5kVM+dgmR5v2Z
	5wxKTMNdXqLptWri6i6np56yntwusECqvYIYEWXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018204d482fe-a86bbda0-94cc-4d7e-9658-aa74269eb214-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75ed4804fa30957019412ca5b3eccacc324a0a5ebe757d0b2cfe5ccc68eba975
Date: Sat, 16 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657938412
