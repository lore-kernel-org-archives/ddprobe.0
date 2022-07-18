Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE443C0A
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658172412;
	h=To:Subject:From:Message-Id:Date;
	bh=Tthcf5D/6E++XaEmFpTuST2mkVU5fqsGnmRxsdkq4+U=;
	b=TgaHZ41OmlKBtUOK4sX82I65YTYvSIcIZXutu6N0oR31LpuZRHCWVGBnAIf4RB7F
	gxJctQipenwbW3XQohxpw/8FygsJNbfO34NuLMu8RJUEupEPzqoUi9YWyTW3ooBfKU1
	Uzxr6MdSyLQFsed9aGsNxLL3fgMmELGtUlTeH+DY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658172412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tthcf5D/6E++XaEmFpTuST2mkVU5fqsGnmRxsdkq4+U=;
	b=VZO7J+saeBvmHZK14j9FuhzadfUVVSr67hIs7Q0EMcQhMl7zPBP4xnLVIsoYjXH7
	qLrxs5HFrrf4glkItESza1ubHtC/WTL2IBqhNsu7AG3UAdylhhEEFTpxMWERmyQoZHA
	I0KE7jADm0vWDWiSAmj41pa5lTRTDiZdyPqfn6GY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212c7117d-4299b154-d7f1-494d-8cd2-4ef7a436eb87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc7e78fc877d9bf79e0359ec4c5ff1faeb0a0f7971ca1a567bef3bce4297091f
Date: Mon, 18 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658172412
