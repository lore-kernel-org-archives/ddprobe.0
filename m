Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069CD36C
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 02:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652495579;
	h=To:Subject:From:Message-Id:Date;
	bh=l7vpWh9odiYnxIsCndO1jSQ2AJCjtM5mR2MIHKIwA98=;
	b=bFRUugAsNAFwWy1R2RUk9UlXb2IzTd8ZwJpjO1xtlPJqPOW1V2eJcgEtAOAiMd7W
	3MD+qTmcjrTWcg/MAqSh4cioJWi242ZBxcDmWUThlWeHQ4zvPYuC09UOHSZd23ncvk0
	RkFICtr6wAH6bHjGVTFYVB09qOVQ4+hxOG7URCos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652495579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l7vpWh9odiYnxIsCndO1jSQ2AJCjtM5mR2MIHKIwA98=;
	b=cRKwsZTidyb+TV3si1P9PxzUdXZNZc9ViUBNiG7MCS47NEgOzc19JYtnGNzc7nwK
	JoRl0lg2BcflgdLSkfbrgxhjOVQ55RpTG6tRs+5VIrNrmZuMuEApSPieYxrSLviFbvZ
	9UYCgsSTwuKKgIO+YAL9m0MnnJ0TD6EJFkXZPjfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c06978a9-250426c2-78b4-42a4-99bf-9891afedecb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b2b0218ef8b75989f123c3d72020e088cfa4c57d8bacd9fe51b879cd88e52bb
Date: Sat, 14 May 2022 02:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652495579
