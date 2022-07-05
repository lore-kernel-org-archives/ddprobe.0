Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CDE2F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657015612;
	h=To:Subject:From:Message-Id:Date;
	bh=wyTy2mEF24w5nAaWpcVS1EBVSPKBr04QGInODMOdEPQ=;
	b=V6jJUZufK3u6IP5ArZEWonexclYJaHnv7IiWc+CCa4z5rVAI5yMacPcp8cY1b/7q
	Cv/OacAPDdWL8j44JYUxG2CYWbV8I1h/WDgPRwvnUrYoKJ7hCOBrK7CdR3iconcImyt
	S0kmz2G0N5SVOGzcArkAYDdnAUrFL051uk0X789w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657015612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wyTy2mEF24w5nAaWpcVS1EBVSPKBr04QGInODMOdEPQ=;
	b=RpJLfcMUkxYat+ROx6RciF2GENeaL36FXoDbrd82JN4+Brb37zWDhBED8jxcgzu1
	cSy6gmC1IlN0qIGjtnEI4z53jKn3PGMsMA82jnF+M5VCI8w5SSBSJWRE2sX7B/4IwD7
	DmMEzQiWaLz/uevbNpg46/Qykqhz9mP1GGFjgLU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cdd3b375-348ef40e-6892-427a-b6b8-ffed0a6eadba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0b9aa00ee8840fb1229a9d99e60df4039d5c5ac1998cabf793a40cb072f51ae
Date: Tue, 5 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657015612
