Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E8E2F24
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647858084;
	h=To:Subject:From:Message-Id:Date;
	bh=CCWNFjjuLTzyJbefshgdCebl5Lz2105nH5PqgMTPGEk=;
	b=lxTUh7zSvNpMTeSb4C4DdY9kd7N5pZjYUddTHiGwjojJkhqTDA+cPhZ+JPnAApqh
	UZapk4Q1FMf8Cnul3QoPYEYYo6qBiDXai/UA2pny77aPnTyUZDnMBrM3toE5YXpDg7n
	2eo5w1aF/1CEvj693IGW+pNSeGNV1YFodjU4q/QA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647858084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCWNFjjuLTzyJbefshgdCebl5Lz2105nH5PqgMTPGEk=;
	b=gS6byubPpMHuDf4O3yC3wb1YFKNVBDHCLlYn2CjKgwYTLuBhctoOjS9poAKTx9h3
	2EXSotUgizxsV90Gobki5vU4/Y5MssHhPFYmhrEIdCI7hFrEj5RjViwsauU36gdt5+P
	i3nLRIxPI+lET1Q6RX/17HwmtitgEChkG6siYx1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabfeeb82-2f4b4922-145e-4549-bc5b-5793f1bc48a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35c44db57e08e58b37d7e20777b275eca22f6862be471a7b97e182c1ffc88670
Date: Mon, 21 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647858084
