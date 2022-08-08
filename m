Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A1E7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659994252;
	h=To:Subject:From:Message-Id:Date;
	bh=vBqSSegt8YMl07s/Gwc2fPtpiIN+beBqaVUCnj7MQiI=;
	b=gGAbV001hx+nlbhiP6YjpabsXAWN3jZ8785Dk0LctJ11PkZOq6YU29EEYuB4o6ea
	NUOgz2TxhVvz46OwGnJLwIfxYFFR1c8w6tutTw/HHRF13FY3GiX/i/eRY6IzyFmLJfG
	QLy4DkDNyWRsqpDLDsBaXYik3FxqB7OTKSKkLRuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659994252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vBqSSegt8YMl07s/Gwc2fPtpiIN+beBqaVUCnj7MQiI=;
	b=AyRlvZZDFdNerv3ANeeC8LoMlHQb4DGPQHslY3kctwqRAEQzOf93Mtob+TzrIllH
	TYykaTONeKYUMWAX21vcJA/LVRbhqwfwW7ZW32g85m9FMBEN33mzH5qeuFem2ouGNFO
	cU5r2/66QCVv7tLrkXiV7DO2DvnVvl5HqRow6ZS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f5e2518-b45033d9-07bf-4546-be0d-6d0173751b19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfd062a89a645d8bc818c0742add10be54725cc7af00872d994f07f490b1a5d8
Date: Mon, 8 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659994252
