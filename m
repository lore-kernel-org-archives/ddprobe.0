Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142F77B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 18:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655576279;
	h=To:Subject:From:Message-Id:Date;
	bh=GmJ9PdkcTH4hetjtpeED8lMSx5zRPM5TwhirA51NOvc=;
	b=jqW9iqHsbMEom2uEbTjQAcoGspNqCyvap3IFJ7osuota2LenCShyuy+DjecNEzU3
	vS+FQoGM8nZSKIhPGqcb3ZDeHux2TrGXhr+qdVA8XkxLeL/uTIm5MoFIQup8ltsxdwi
	JX1M2fmCdc/YzYNxI5lPYDUm8DRn5OGyJWD+XRy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655576279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GmJ9PdkcTH4hetjtpeED8lMSx5zRPM5TwhirA51NOvc=;
	b=a1Y8sYlvkZkEc4wEsA7WeV2ouNysTtwKyzfCsM5+kH6aXv/yQhBKnIw7aI1/kLPC
	2Bew3mOLAnIchWQVrgjhuBQYl53Gme1d2vRmVmhlJX3jiEUeNUNQ1IJAIdt+TIxenCL
	gkChXOcHdPu73ZJYdehgCqnQPHWxM7RJtqP6xhd0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181780938e5-5345d415-da26-4407-9f3c-74aba551b088-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b470d4313feaac2c899f2594be1627d5eb9e557ece5d3a484a465de601a8fb3
Date: Sat, 18 Jun 2022 18:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655576279
