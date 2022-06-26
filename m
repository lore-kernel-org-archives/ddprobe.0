Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AA419A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656214612;
	h=To:Subject:From:Message-Id:Date;
	bh=NbLw2sqwma0vBijqth3ICE1QkJtNHZUAcB317rIsGkg=;
	b=ILPzX9TCcpe+42YJuMM6Zy3UIsnGHzkla411qP1WpxJf2qcfVmKRFvrHsDwUL1GS
	CB5oU2vCaBp3TxGYenpg3gWEZdg7koq72+cz/QkDzZTAbK5HoTzjce1NomktQlZxHUe
	x/e6Mf9YmV3F+i1Gipmxyk9GI0CCU4jTj6oGgk6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656214612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NbLw2sqwma0vBijqth3ICE1QkJtNHZUAcB317rIsGkg=;
	b=fXxTx65icv+JcA15NG7X2bEDCwShASoOkXWmi4M1+5x/eAsV0JH0aTalo5Qo1u4m
	IuNrYq1edS0OB8q3gO7rFVBAUtd/JJTrC2c6dVLZHgnAtNh8vU5of+bHqbf55Py2esn
	WquywToqApsj4vfZ74lORea0mTHJ6+Pi5h4h2Wt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e15695b-2a262f8d-52a4-4af4-b9d6-682b3bdd43f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60f5855c27d453633d0967b1a153f4f838a7f7dd55fa57db14cc25291379b883
Date: Sun, 26 Jun 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656214612
