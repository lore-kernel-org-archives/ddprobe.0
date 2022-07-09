Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505ED7A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657343212;
	h=To:Subject:From:Message-Id:Date;
	bh=lzhsMNLoh+Q+viYvKsHZ2qrDeeAar/RSHQUL2Jrqxcs=;
	b=SLN1r6798+l/rSXUX0RZVKmjwCPv2eXfGBfhDkVweDbKBnHlQdzFzn9f2WqO94tP
	pFl0qXD7XkqFyK6zXel03AB0YDpSlOB9V7QVYW8fU3sqjXu9MtmTs/jp5A6p4gF8q8a
	G6oWcQZ5f56JM7XtA4HTw0/rkgzFS9rQXbNcRzU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657343212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lzhsMNLoh+Q+viYvKsHZ2qrDeeAar/RSHQUL2Jrqxcs=;
	b=bRoSQhGdm91f0VBkbg6zsAAaKmoLtfCfvW/nZy3Yq52HzpXDFOopiCFGLODPawBA
	OD53dQSL/7E1QQr8k5PFa0gTdclojep/xQHMQ381wA1PsHQrj99CHvAoiLPIC/CYGUi
	aH4RGtlD0h4YUYlQPS65nAnU6EUh+Ej4LuaX+qCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e15a7aec-967f2ff7-b26e-4f20-bcde-dcec5a0f8c09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b990278f70dbee8e940f2fe929059e397b5e1775470162ae48ab149de4374e8
Date: Sat, 9 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657343212
