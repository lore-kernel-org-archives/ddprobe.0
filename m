Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C7E192
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 01:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653095880;
	h=To:Subject:From:Message-Id:Date;
	bh=ohpaup0kxNHXA1pSj/aBY1Q/GkeoysbsPK08YuZc4FE=;
	b=Lu6R6x/oLw8TxGgCZ/Bq8hbtg45KiotapW6ygcGMWGSf191wwLrJtvIOSmoARIap
	k09bFcPIyZ4o0IIPJoFqcdbiLEJdzzD7R0I6jbq/Hslz4CRWnHXYhgoe4wkwB4fAktm
	gG/XvU3wDXvdDz219pn9zSjpKrdP+2f8M8q3pZ+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653095880;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ohpaup0kxNHXA1pSj/aBY1Q/GkeoysbsPK08YuZc4FE=;
	b=Nt1sbgzvv2C4mpcoP6hPe0U/VFT3xZ0ZaaMQpHampS5MspH2mu96XmTIvw1pYlJR
	m+xtdPYFlf+pf0nSLhJwkKJwRdZNy6qRISe/r5bWmxoysPjVzSaFpMahmycm3DLYCL1
	PQPbNHGmpO0r6RfPmOl++glWM7aXq9as19AA0qas=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e43152d1-b794d3c2-eb67-4571-be53-2e8caa5f52cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95cd97ef2d9ea0c17097a67cd6856ea513fe673c18b53b6edde0e415f20198fb
Date: Sat, 21 May 2022 01:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653095879
