Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCAA97C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 08:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654762799;
	h=To:Subject:From:Message-Id:Date;
	bh=YshVMM2/1nHo2G6+jvYUqRIqbff7quMgKe4EvGHtqP0=;
	b=HxQrewqKhxKuCgGFkS8mHQTVwTo3eCQP3Nw1FXm4YoviUKKchm+LMtscCaVVFIe3
	dwFbvtVMA0P8aD9rS2c1FRg7sxc5kD+loWuBEBmf4nopb0IGss01ddR57ATWMWzlwDW
	AiYRFrz2zoJKZz/6YtZqzBJq/B3ydi1tPpoIhpcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654762799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YshVMM2/1nHo2G6+jvYUqRIqbff7quMgKe4EvGHtqP0=;
	b=eEGgzOhjjYFyj2zeRKaalLNksz75FOvNdGn8jQFIGv1xaW3cQLIochsMPAeljfXC
	/lLb5QdlnXtI6yTUjd4aS1i89TYf0+5vj+j5FXjIzQMmcqh07QHmjO63yaFf8ak2vbP
	idIBLa1fqF1PXMGuLWqLoHwF4eIKwQPriEfeVQbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181478c807f-308d1f1e-9593-49a5-9024-f189ff757a2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e9d1e9ffdb30ef16a7e4e2c7bf5f3bf2cb2738353619161d0b6b1c0fee80107
Date: Thu, 9 Jun 2022 08:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654762799
