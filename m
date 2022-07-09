Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C7C7B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657362412;
	h=To:Subject:From:Message-Id:Date;
	bh=qjBoBukNtftA9OD/oGmmbeOv6XbH4T/G3KZJSHdfDBE=;
	b=eP1motlQQ6K7b1/YSLhebfEsJFKdIAc1LETLKF+5J9N7EV+YCadMScyYhJcFnFQB
	R97D3pRGBaH0dNX7a4D4lev2nRdr1Th8dqNvU8bKGe5Nz9Q5iP9l4NXEiiSfgVk/zTW
	sWxahVl5IaRBDAS2TKBy2/0a2VQ1utOAAbiZAyao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657362412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qjBoBukNtftA9OD/oGmmbeOv6XbH4T/G3KZJSHdfDBE=;
	b=LSPCYTBP7E5YjWnFTYBmpA9/F+CvaipLmvqyhL/28n20wjkHsIqYy8RKUAlTLzAf
	701REWqry3Wz+zK5FscByFCTg47J8ziBmZ92Rf4/nCXxtBgwllszruwpN3vvL+YebXr
	hZQLDbZGFaOZEVqKlazJ4QjVKV9PNwi+untWE2eQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e27f734d-7b4a08c8-4aae-4ddd-94f1-9e1d716310b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78d4f5f6734f92b387a586913465e25f0157d5f7ef6dba1b7d033418371259fe
Date: Sat, 9 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657362412
