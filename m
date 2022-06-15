Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862457C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 05:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655270939;
	h=To:Subject:From:Message-Id:Date;
	bh=OBuUzDU+a3TdK/A2Gs5xzvyVRgmrlypUKqG2HYJTduM=;
	b=EgQGfdZvcxLnVaZL99Y3o085YMsOPW0+Dezkj2BhRWsh3gqVKf7fyQMZzYdXPFwb
	92n0lttyGIC473BS/ZNMq/b7AkrtXvHLMsMb1Cu68JStMeKo0oIgNAGZ634mq2d4DWc
	z3UkYu22DS8PKCb9K9s1hfxEVX6BoqEzpA1wy1vQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655270939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OBuUzDU+a3TdK/A2Gs5xzvyVRgmrlypUKqG2HYJTduM=;
	b=RgjiSSzuTkHzMpeDcEX0rLtMR4iTj19AG4LyWTeyyjwNxWpOpndQ1LgG/K0BoydT
	I5iq8JMR+6oI3pOyxIrZYH5IDAQXqSwIJFXUiL5J0agbsDn+2+UG2WybKg7A2nEtdBZ
	4bmKsGXvn4GrxT1ch5KuZs4o9ZA693bb+rEVVecE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018165d61a6d-8b203524-64af-49dc-ba67-425bfddd9f8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8933a242c81478908239857d5bfc3af592b67d5951fd513b1452f97277bad141
Date: Wed, 15 Jun 2022 05:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655270939
