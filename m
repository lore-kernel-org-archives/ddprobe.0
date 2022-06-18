Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DAE7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 03:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655521439;
	h=To:Subject:From:Message-Id:Date;
	bh=3gMXH787rqcjEBnAlZAqC+pc4Ln2VyMqFgv4cjdggSQ=;
	b=gnKFmzwh/Nu78KzfdOQG/TZH4vkBNWlpi7A4h+WekrlinhmfaaYxzaaFdp6yXABp
	V3r/bLgbnbH57TXRj23ww6L/Aja3V5aMBLy8nMRC3cpkLD9mdzX4/GG6B5S3bMa/72k
	UHx3YGL2C60eQK9sTqkWTOZ6NB8tiULqtiRk0e9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655521439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3gMXH787rqcjEBnAlZAqC+pc4Ln2VyMqFgv4cjdggSQ=;
	b=gZGmo1mW0OVINy/kXzM28xM6phMu4dX1sttSiyFD3aAwxGKAtUpy2yT4yWIp81L6
	6INsuCXmQXTdbapH4v+UW1ll/CRBtBlQ7X4mPh7TVKMDWi35M2S8Le22wrgqEfB6HYU
	wFt8oYNNR312SwFdgVCvxjxd/Gk98yrarM36//YA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174c46e2d-11546c55-9b1b-4ecb-8688-6e8b1aa0f7c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23f45aa2d25ee47d50c1c51245ca684523c9557d8a32ba96f2c6efb014d6b582
Date: Sat, 18 Jun 2022 03:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655521439
