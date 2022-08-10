Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512CE15BC
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660120252;
	h=To:Subject:From:Message-Id:Date;
	bh=j4cIo6m2XH1Nw+f9QjM6917Qm35VNrjwPjchoOJteiA=;
	b=cNw3brcBuR4HmhERQQalLndSACI5HbhkrXoDhZb6S6INUrgNrt5lZ7IF4N/7QFts
	Jsya7Ab4LtfPQaa7ul+bUQhBEPRxuvrMze/BIv85+TjVLytCDXSaxIUYEV68zAs+52R
	V+v1v5lvPjnAqx4aFoLw3cZTiJdtlwgeDjeX6cMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660120252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j4cIo6m2XH1Nw+f9QjM6917Qm35VNrjwPjchoOJteiA=;
	b=KO/cztXSd4CiqzAOQc1REhYMUnqPAXlgQcBY5JYfk2z8XN+9ftOuAbC/vINAT9lF
	0C9HkccPdyznAC0zTxsgaqbrjpT3Y2/KpEu8eqK5pOrdJrGja3aucqooNN3pjp49bZJ
	XV/iPkrnwy25/oKIlRez51tib7iUtq8n15qVqEiY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286e0c0a5-70e1bf26-d9b5-416d-96ae-48e0581ca8f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 618eba4f89f0a7d33fd55a6546af1cadf3d695c16281fb56ad39c0afe36276a7
Date: Wed, 10 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660120252
