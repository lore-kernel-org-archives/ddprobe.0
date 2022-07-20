Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315DA1FBC
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658295412;
	h=To:Subject:From:Message-Id:Date;
	bh=lL1HQZPKupEzPW4pZR69P5Dqhu2AD1kks1HNUkCK30g=;
	b=XLuv78GSgP8pduyyQYBQH7Dj8VD6Aamme/t2DKH7LD5HcR2PiDphELZYlDcRkE51
	vFRZz+LsrIgXNj7ZZSmdUdaO6RtfNNI0rdBPtpQYtsADokMAWxrH7eeK9CeIu4j6c1f
	aQMa2NfIQaq4jsMUfAECGOlQsUdtL+I/6WrBDhFw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658295412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lL1HQZPKupEzPW4pZR69P5Dqhu2AD1kks1HNUkCK30g=;
	b=Hw5y2YJbrOwStd8n1Eyn/w3SyKaMH2CqFQ051yHburor3HedsIcykpj1pGu1ABhR
	PD8xXc9axoyvJq6W3UbaDmoyqT6uQO/46NBHPNMvEJgVkzwXCE8S7lk5QY2k0PhAhBX
	Pqow5XpaC3eIZHNRxV4N9srRMCwltpFv/sEMCRQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821a1be6eb-707f1d08-993a-4864-8bd2-18949b6d2fd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3b5d4c1a9b34e7d8da200944f7bec7bb9f3c2720998630b5a681afaafa0f5ff
Date: Wed, 20 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658295412
