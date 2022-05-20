Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0682A7A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 00:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653007799;
	h=To:Subject:From:Message-Id:Date;
	bh=PI7JOlz+9U5s6BU/iVuklw76o15m1giUUSqde+v1TFo=;
	b=BSrh2RH11nynxh8IjagMPOJvJY9/GaM3e+v/898p4bI1xRH3mTP9Ojy25YsgR0Lr
	Kz54vJ6EsqGEzMXPLOaj5s1p6Lj/VrLtn/O2ie+4nKGAnPFv7+JzTpmt96yVfWfKsDK
	nXEr3zRx7PejXzwIiatJ0u9D5ysS4gUvHo0ZJgNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653007799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PI7JOlz+9U5s6BU/iVuklw76o15m1giUUSqde+v1TFo=;
	b=SiB5tsv1FYtyQ+m/88M7ObnonZ4mg242jM5U40GTdJkwcAezAmKB7gTQLtVKRA0a
	aCsjw33wUqJVEoBlm9GizTLMWlH7l4iAcQHYJ/mhKi9c+4TZNhtFHs6oFttSLO//8rb
	VHa055nh/FSVGGKODYgioqiF9KsJ/3LtDk6q7Kdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180def1543c-7678caa7-e867-448e-9902-fffa382e0190-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fde756b134e32392e718ce5c8fea0576e71479ad232d220610a4dab885d8c956
Date: Fri, 20 May 2022 00:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653007799
