Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B4E423CB
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660714252;
	h=To:Subject:From:Message-Id:Date;
	bh=wJzEtmDYDygwDYb0Lv+qDTlTad0TnszL5M9i903Gtgw=;
	b=Gua/Wn7n+gA9BTmAE+jRyLRWfaY5pCRJja4jJ9skcqorVkISbovDZX70QLpjZLQj
	FxXYqv2oFgAy770s9cHHyth9g/3V5RDuckgbb/ymKceBhVC+wd7MqoJXYXZPOpYisZk
	A3SfWuDU7bK0xpxCswV1tit77xHdaU7/7m3ZNAWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660714252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wJzEtmDYDygwDYb0Lv+qDTlTad0TnszL5M9i903Gtgw=;
	b=Ngfhh6HG48Ho7Eh5PHCwotpBkabFzANctphdsGGwIwofcrb4q7bOvevfYvQvsNlO
	ZsbUTisccui82bg2gLCfmIRHWquZ0W+Z6Vot4/oeSq8AtJls6G75goDdBmr2r1FEer1
	kMKs6EsWBnCasIpCeSCN5SfghDmTiI7GM83M1j88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa48792e-10c10e33-bb4c-4cec-ac0e-503496c18962-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 495cb4fea032d906dbcdcdadc1c7767390d47255c45658bf070c052f756a2918
Date: Wed, 17 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660714252
