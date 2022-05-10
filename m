Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0192E2564
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 11:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652180639;
	h=To:Subject:From:Message-Id:Date;
	bh=0xGa6Fgknse92egi3cxYoSz8G2zZ0an14VhTrWMWZl0=;
	b=l4aPw7SEiK+Ip60jSXkDwwwuAieuFG6S45fb7g9RnPJoRRxSzFt/0EkP04N3EWbu
	l18uleQ+aKB89P5iFSSQXVdhSeRth/NLWJd0gpkVkz5kvCsVqnLcNyd6D5htGGZOULu
	zdchf1UgCR2r/DAlRQHeE2VjnatD5I0pgYP1cnPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652180639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0xGa6Fgknse92egi3cxYoSz8G2zZ0an14VhTrWMWZl0=;
	b=SxZPYa12itnb6N367/qGfO2CMuFisHvI5LjWkAWhyOO7B25ccLj46d3vWQBOFXlc
	Ptoea3GhtNAWlTWlXEUWVKWDCpSernh+GbJ97JIM8flLT+s3A265lRJ7Kl95XYtJJvN
	o07z1TqXjkwF1RzuDwlNA3nBtVxz6k7jRf+Cl9Aw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ada3de2f-d1572d1f-1b87-4d8a-bd0f-142d931eb00a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0965cb39abb22f8918cec267842e9e899dd7b8bf6d2fb32ffa7d4deb0ded0aad
Date: Tue, 10 May 2022 11:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652180639
