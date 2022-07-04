Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AFE7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656977212;
	h=To:Subject:From:Message-Id:Date;
	bh=Lwu0PP5W37KyxRVN/x2DBy0Y4jutkbtWqs9RUWnCB6g=;
	b=ERau0sfLEZzOrmWCpEYYEOrDNZbrj9epjjx0NbtTh0mzK0PA4ZXEOpP5nC5x6zu3
	wWQSij6nebnqnSvYrPU60mdntVzJbshZy/yuGasY/Ngu2B7aNZnB7ATl0CA3t5JPeIw
	8iY9fDV78UNnKoywmiDuseK9NDmRCEa9o9OvNBtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656977212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lwu0PP5W37KyxRVN/x2DBy0Y4jutkbtWqs9RUWnCB6g=;
	b=Pqu9sfLJ+MRFOzdej0IANdolYFdjAW/nKfWnVAjCeuOa8de67AuffmEHgG60uKcz
	gO63O1E/MKrThBU2MFQhT/z5rNVb5Vtq296MxaahkJfzoIH90shQwQuqxnPoamu4+Hj
	F30B1Jk4kR1gD/lIBuZAg2aw5X6IQoMBPt9tETEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb89c3bc-d6e4a7ea-c542-40e5-b9bf-4f5d260a98d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d63dfbe3d871297a04e8510120394b5565566a794aa3916e045b1eaa29a069a8
Date: Mon, 4 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656977212
