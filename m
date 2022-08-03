Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA2C368
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659512453;
	h=To:Subject:From:Message-Id:Date;
	bh=k3NHFy79DdaNhduq03Ah/UIdDrtGk0qxzLxBvJ+PhPU=;
	b=USSGl1anuHuOFg10bpUsuQfkbxgsWDivHj/NX0Qreatz3zxEbho6OQzBZPJC8unB
	5IZoCmCc5qff+DUKSc/dc+eV7OXF+nOYDsz7qdYpL6Nn0cdt/BdbaqeUrNjgZNtNGpT
	L4iTNvWUKv5qe2LRbMSO9A9iSjGgIMGmIIqihV10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659512453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k3NHFy79DdaNhduq03Ah/UIdDrtGk0qxzLxBvJ+PhPU=;
	b=eDczxUU+j1QDHp0PlKkK7XxOe5aZIDg0Ura6FloUYc4EHz30Pb7hU+g/Gmd2Lv15
	AXdeNdwtfLgi0W+spotTX0eTCCNQt+tocJfdw2rN/KV3OSkeY/30Hsj/KBK5DlqMweo
	colC4y0TTOaaM4p0RtGM9E6idHdFiFXkSbMN3wgY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018262a675e8-1f2d3281-ae04-4654-a265-8a6652c07e59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ee52e64ee9f6f0d01e69a930953c50b08fa2ebfefa74cd6db4509c321505ba4
Date: Wed, 3 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659512452
