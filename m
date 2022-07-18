Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A94033C0
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658161612;
	h=To:Subject:From:Message-Id:Date;
	bh=Vsa6dIFcj6DoX8CgrAYHMhPzGfq4CDnRg1/Wn5NI2uU=;
	b=JtKdtuIe7UsKvq7a5sVoxx1kjD2RTTcS/3CG4M+z6W6k3juR4R3XmZbIfNEoy0Rj
	fipIw8MYCzgJAAqHnsiN0KP7oCZJMB75JMMbUCw7SXhFz/78SzBVuT3X1cxs/69HkcF
	wUUDnprPslOlxqZVcdAXkTOlfGP1ITMCnbzPsaJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658161612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vsa6dIFcj6DoX8CgrAYHMhPzGfq4CDnRg1/Wn5NI2uU=;
	b=HEeDyALxAt+Ma9VpbS/I10KZ/OqCEhPr+ulLcrmFt3eNZxAuyeIn0XaRdSz1MLhN
	PJjgrcLtV9/MFC3hWc28ZSbyneQCmIpOHWC7VECTgFBNdax5ANehWleaDwfToLdk5MS
	Zdgm+ZJQY8nfLM3VQps45SB5N2G17BiYWEY7pT3s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018212224609-2ee19e7b-7ed2-4f4f-8599-79e1cdcb9397-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60629b15a23ff8fc1a8471c1b26137935446be06234c2daa02b7878e0c515c6b
Date: Mon, 18 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658161612
