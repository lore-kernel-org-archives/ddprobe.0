Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C44198
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 11:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658662612;
	h=To:Subject:From:Message-Id:Date;
	bh=MMB2zsYW2FrMpfP6i2Pwcmxz8m3hRoAq4Wxneu1h9dc=;
	b=LAlyC5jQObWZ/LdmrFEcYAUB0TsEX/iF30u6pKG4sSBzlNavoulHKSFrhaxo7A54
	Sgyb1Qd/8/0tdOlPD/9hvouEoKBhV9ICCj1W9ySzmOlxEge4wEJQiock+k/8cuLKtXt
	T41AXYo7PPViF37PvWPkqc5m007W236gNO8t7iv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658662612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MMB2zsYW2FrMpfP6i2Pwcmxz8m3hRoAq4Wxneu1h9dc=;
	b=Bv6Gh92VU0OUjzvCejEq/Y4ySfZDMI8qRwDGwC8xw+aJX3RHCwxBPyec3iHyElFd
	BomCHdK4Cr5YA8ydcRo8YOsxLwqcFeJqbkavzHGjP9j8wvn5tnZHhEBGRjkVylseDNE
	PR4ncqN5XCsZFm2oGmGWW2OmNGNkGi8xragMEICo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822ffeed56-32e0203b-ef7f-4d98-9c3f-b7bdfe352313-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8ef9656fc1e5ec603be275c1949673ba6db10ad7ecc3bac78982db797df7170
Date: Sun, 24 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658662612
