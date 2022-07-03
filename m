Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4833D99
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656879412;
	h=To:Subject:From:Message-Id:Date;
	bh=j16HelRckS59qhZA0pzJnZHVnaCZAN2Bx03Hf83naCc=;
	b=Spct1rmaPM1nd8qrSjQm3O+JCfqS6OZMAA49NLYU6fxlcxz4vemb5jCrFT7DO0hQ
	GsiQdCVSKPz99O9VlvkTNs7VAaGGJWdrwAyezX4+ImGJw3wXqMtrxwAGl05nEh5NZoq
	KvUxRmz0QOv+OJQzLMiglKNATQb3LDl4zWH3IBAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656879412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j16HelRckS59qhZA0pzJnZHVnaCZAN2Bx03Hf83naCc=;
	b=gcueZyN26EImZYxR9aXOwVyBpeTUNVh0CkjryZl6HR36H+h5KbtQL/M+xpySCKl3
	fxe9uMh4ncNnLlo2IFQXWzSWxZHmbl+nMpzjFiy8TzxzXTiY5Tvh8psBtxKKat5HPAc
	DwpW2HCrQIv7x2mTZwvOd6n2urclC3zBMVyMUVeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5b5745a-c6b85ada-1b3b-4377-a0ed-e90b5aa09ccb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4e164bb6fbe44cb82638a8b74acb43f1b54df75512fe440898ceccd6b7ce1bc
Date: Sun, 3 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656879412
