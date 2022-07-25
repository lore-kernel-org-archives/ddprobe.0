Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3458020F3
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658765812;
	h=To:Subject:From:Message-Id:Date;
	bh=SZzeKafuobvTcJ8uhkxaUGlYO/aQAxi0C+0iLQR3aYM=;
	b=dwHuLKRTUxHhmmSUNYRbp2PId/ERaO/3sNqszabsAiUzs9mrUhOBrQiVa4mBo/nL
	nDe/HZ+SOdEZnmo/hdWhRGLeFt98pWgqLVX5YS+IuD3n1k1EeH0yxDAjT6uTHTWO9QL
	5Fa8p/Ymu6TBps2dzL7+sJ0cVmu/BNFRmfkS+rhY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658765812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SZzeKafuobvTcJ8uhkxaUGlYO/aQAxi0C+0iLQR3aYM=;
	b=PEx8MbVjcHW9p+R0hWQ7ooJjCeD15ixIoWSAyAt+NXHpOZ3chLCvFmDRaolJdVAN
	pdrnA7zL06HSpyHFZ29Hr8LIarS0d5RxoR9bQT2Gvp6cjklF88GZC8llmhc3Eza3dkD
	JAMPAAOUenBkCRem+1UBU4duDCQfJmPAGtpGx9WM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823625a274-a463469d-2575-48af-9860-fdecfe47b164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee42b41805cf03cc4ae1aa4c741393a9fa02a9148e847cc442fa7124ce1021e
Date: Mon, 25 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658765812
