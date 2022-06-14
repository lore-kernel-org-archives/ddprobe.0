Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345ED4691
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 05:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655183399;
	h=To:Subject:From:Message-Id:Date;
	bh=QaXeJIMFeLGaj8vTyjgVJmta9hVuvmYvEC6L4PjiC4w=;
	b=DyM3DpTUU3K9qIZa1KmAI9OthmEUnLTcsoWtm90cYruudFEMibYeb4QqWsaKblV+
	Z17hWwMyGhZJOnA4yFwvKCrUgDQDmWvGI0PAolnzqTtWHrYpgFwVb2cmcd9EA35EZA6
	rcYzIC80fNd6O1cg0IZJqepukL85jXylch4g/vqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655183399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QaXeJIMFeLGaj8vTyjgVJmta9hVuvmYvEC6L4PjiC4w=;
	b=hGdPy27da7xHq/y9RsYYo7KYJfH9wP+LBip9bzgKXEFZpdw90hgJoUDAsmNaGKKa
	2mETeW9jxrrkRwOGrOo+F2DiXP+BO18ihV/rlq9UMEG4e46kLIXestM3BftiYSOHDo2
	+5+tvJ+XRv48cLeYofE9X7t2D1FP4+vELMAwMMsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181609e594a-1675e20d-85cb-477f-b5da-2a4092639ed5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8951771317008c61084cbd380741fdea48c8c759a18036143bdc9f6607ccf169
Date: Tue, 14 Jun 2022 05:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655183399
