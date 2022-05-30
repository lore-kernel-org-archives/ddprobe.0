Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E371B3234
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 21:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653946380;
	h=To:Subject:From:Message-Id:Date;
	bh=vIw0LyZiZqNUhbLruT5HdBQSScpFGtxrtlQlBdivmGA=;
	b=cHFCIGy+FfLImOwYkx83eJDSNY5XwWh2IsFrrz05HV7C3QCymAaEPEEc0SLkppN1
	O4gUjrDwyNivFck4W7RyXoDBWVgvzLEwbFuJAlZcrnfQRpnXqujuJ63EIPB5pChp9X5
	L1azNjqae/uKd3NVJnJOGUog/hIrt3uSg498NeCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653946380;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vIw0LyZiZqNUhbLruT5HdBQSScpFGtxrtlQlBdivmGA=;
	b=U2XVxiBd/roT/TAlFLhDvDvncmyWoymPdqgXCwxEkf2uxmGN/NK5fchGuFK2Xs2c
	Ad/hLvPmrGwnDQQTIvQe8++fEZWVq2AzOXC3gBq4tmF+a5BGuwyZJtRdfXbETyrGwqB
	h0HAKSYRfU7K7m4y7kb38lr3ohPk8zseSumhm9wE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018116e2ec5c-24cd08ff-d5b2-42b7-b271-cbc1b97cf071-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2770ce211a20083ea146f0d278d9a94632d39619174c52e29bdd55f86b2c5ebd
Date: Mon, 30 May 2022 21:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653946379
