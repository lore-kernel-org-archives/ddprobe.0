Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15DC7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658791012;
	h=To:Subject:From:Message-Id:Date;
	bh=MMmrz4Xl3GQvgPxTpeQScjHpEqaws+iAEMf/B9ncg88=;
	b=MpTtlZ54QuRRLW0nwKaB3cfRyGSa0T5bbLviuBcudJGH5Euu+9s4YO78BPgaPwWl
	bGcMqotrb6stFGohvrc3mrE6A7DoyCpuuaFhj+e4HybAkhmTRM/DvGnXiieWmFd6E2p
	D7TJ8WnGrBGC8CLMAU7Y+Kwz6Mlm7S6e3DuNe+qo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658791012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MMmrz4Xl3GQvgPxTpeQScjHpEqaws+iAEMf/B9ncg88=;
	b=Jmo10vjbwjQ9aepLu+w6UmwxgsP6QPS8ppD5YRg9jodySXOxbuJZzEQcCrz8vt3w
	8650XH+/GX1bIRJ0X6ae8JEq1mzWRjqOji1v881IA7nDI7lcya3XKprtPkAQXpvVTUi
	Qu8hNRHIjwPU1dzQfIgEWLML6VTGqNT3lg30rq7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018237a627a7-48887dc7-6ed8-4991-afad-da459ab01013-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7915c7534a49a730ef43f042bf5288179beb995d2c9007dd78c66b8915a2decf
Date: Mon, 25 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658791012
