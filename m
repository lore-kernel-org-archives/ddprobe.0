Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700007C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 16:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654533479;
	h=To:Subject:From:Message-Id:Date;
	bh=ZXvKDQXKXQMBUNqBusDQO3NeKaasyGcPDHKQY2Y7JnQ=;
	b=OJ1nJvhThMHQIzQXB1JPolqcs+Pv0o7OwEk/ONHp2looRXexfGNtUH8wQYw3gtHb
	IHw9SB7P3Hj0IkJjVRDs7g1+h/oL0l6zwYTkye+I8vCY6bjx3hh00xO8MSYRSIDAvOw
	CzMSncX6buAybOTdZqYQ/kJYFsmqhtZcMw0p0zcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654533479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZXvKDQXKXQMBUNqBusDQO3NeKaasyGcPDHKQY2Y7JnQ=;
	b=aH2aVPdnDd15yDfYFADx+CTKkFCEfwUx/G3ov0nj0D7tcDdAd7caYGliBFWEX83G
	8ZwGa+HouLhKrRX0/uervXUqHDvQMkE7z1/FqTtxRmUEaK5/3uJcv/JQqLzBkki9hRQ
	83ShKqoaVQPGjmQtPF1GbmXEsYVHO9hsW2PoyCt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018139e15b4c-84e42b9b-f449-44d6-afd4-1d289d8a774a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c87c6487aba92b722b8a5c51548a164dc2a3753c271f9ad4d9f9657b754e9fb
Date: Mon, 6 Jun 2022 16:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654533479
