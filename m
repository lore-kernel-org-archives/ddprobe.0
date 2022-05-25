Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1015F1368
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 17:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653501419;
	h=To:Subject:From:Message-Id:Date;
	bh=FBx05qPZKIlOkxmgMfn3Gu33u0QDq56+wdTamLYyuJQ=;
	b=JJViybCoxGayW9n2VvvjyOjQ7p2sj/0icWWdhC/O33YA66gMGXHgOKE6qIRW5YnR
	k80rRq3hjDhU27ZzLVBqI/Hxgm7+8bOcq54M/OxJQpHl2jva06KJLdh2glpbn3Ivt5y
	k/sSWh12N3+LQee2GKSfGcoPUwaQT+u1yvPT2GpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653501419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FBx05qPZKIlOkxmgMfn3Gu33u0QDq56+wdTamLYyuJQ=;
	b=UYtPqpdvi2LI03P9rdcD6InDTksPp8re52NPlX5tzio3QsHRPO7ktaZLxY1ZTq/h
	PYzhJsW5mOhJK2xlvH4AwOD7fyykoEUwzOdX7yz1CuW9qViN70bSGoXi4JxstcZBxbI
	eWbZqiSBJfH4HzBCMIqApNYMA4bDYocObeEbg7dU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc5d5f01-b751edff-5dc2-48f6-99fc-3a7d6dd9e8c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d7e13ef5d4db4ef63884659bbc5d8f88dacafda19802d27148d7669a05a54c8
Date: Wed, 25 May 2022 17:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653501419
