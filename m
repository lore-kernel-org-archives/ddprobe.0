Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1550E7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 13:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654868759;
	h=To:Subject:From:Message-Id:Date;
	bh=2hnKEudoGOocvAZg93TvHi9LjMOgff48AI/3Uu1K36A=;
	b=VeEfWFo1RmOJd0nflEiLSSXXMZrwqsiYr+C9ARh5e5vlWRJrF5VK4zFPeRJqYDwb
	5c4mv8BVZOw5z9QPX7VtBDFilZn6KVuYBOV7qMenyM8SDW740bUAvW6Fq7bJMCx/qoU
	JQ++k6xKt+dQ6EtK4RqW8B02IVtW3i0yByvgrfeU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654868759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2hnKEudoGOocvAZg93TvHi9LjMOgff48AI/3Uu1K36A=;
	b=Tmug1SneYrswSrUwUiMRCigwm8KKPYoDoEo39S1XoAjEmvV191vY8h9bzo5bKkad
	T9syZteEPcqu9vSwdW3EHaZN7TNgOw6/atztEjofiqZSt4K1GC9+elb/hsnUkR2Vhc6
	FUFaSgigUxiYb2CnfJPXduAQYfvVabs6QJFZ+DkA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ddd52e7-ec402fdc-7b99-400b-a381-444b613c7191-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b131f4200b8cfcfeddd2c03c8a76ba55e0aee39a281a4108dd9e9a926e9ba79
Date: Fri, 10 Jun 2022 13:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654868759
