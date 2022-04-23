Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107BA7A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 05:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650692338;
	h=To:Subject:From:Message-Id:Date;
	bh=pKDhBWnAg2P3lwD9FZ7GKDSVptEFytkZVdYb6kLKLGE=;
	b=MbJvsCPkSCmzEU1Bxd5UkwbEwYlF7a3dtObJD3RMQ79azyyF3P2LqnZqekgGhwpJ
	EGXklMxFmq7tl7xAe17AIY34ApDEIqthzkyR4PmC6j2wD4Dcpeei2tcTDK3UXs3TGf1
	aUAJS4EtLfLVVocIMaiM6YfEL7ylIaWDdMCmzNwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650692338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pKDhBWnAg2P3lwD9FZ7GKDSVptEFytkZVdYb6kLKLGE=;
	b=DiaRBNPMwI5c27r9wjHfe3JWpssKHMzs1spdSlXHA30SPUb9dY6OZLC+dNh8HtN7
	1GCsX36UwJeMSHu6fdPhr8c2zvw35+9LvfJhrPRHlGgZfLOuH8DWJgdvISck8nw2hPQ
	DUJvPSa0pV9Kj0aomvFsgnQRsB4uOzIzUziCRrTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018054ee326e-ff7c44c8-2c82-4876-8785-bcd9a9918719-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47ae7ef9a71a99f8470b967e746c98df4b8f6f54bb1bf074e64c1b9778153688
Date: Sat, 23 Apr 2022 05:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650692338
