Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2596AC0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 23:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657754812;
	h=To:Subject:From:Message-Id:Date;
	bh=afYt1tbEwVO9Nh8y4FWWlZ0l+Y9CaXc3Njl+RlYNZ4E=;
	b=hZS3DYrsMQfbZ12El1R1Zx3QdjyoxA21XA407+Y7J96BvCFv+OBoncNqmKTi83DV
	GUVnVjWrd9/gwS+r7KQbfmUzKleXj/IAzImzPQcnFxZN2dFAkfPEsIMzMuaDUw7j/Ps
	kEGR3VWhEVVt42wDf2xDips+i1vzRQ83JcceeGVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657754812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=afYt1tbEwVO9Nh8y4FWWlZ0l+Y9CaXc3Njl+RlYNZ4E=;
	b=fuvpB1xVmTSrbXeVLU+qFK3lrmYDeEL+PQ2yAyjGgbXOPR1JqheVbmM2x+OcWe4+
	deJusdgkmvha5ZcpcJpJ7FKJfW9pFZ80hdOX2R/fL5HWct6urpRQH59vljLkipoivB0
	yTvA3bwitK0e4CxMmCz5TXNxGMlDgvWYq5HbVOBg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9e2ffce-9da4d9a7-7b79-409f-87c2-7f32ea70d21e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5759ced3b03088f3df4de4ba41f92de6875490864aaf09076c98a37fd677b327
Date: Wed, 13 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657754812
