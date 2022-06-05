Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422D91FB5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 18:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654453319;
	h=To:Subject:From:Message-Id:Date;
	bh=kF7C87V0x4w77ps8rsYd5aAWNkXLWs8DK/yrghMgyck=;
	b=OoQTSSi5i1BQcGiXKQuTvBxwaYm0w11k7aqeHwx243thauuwXS4xmQL+UB7weMj7
	T7KlkBPQqd3VCskhOjaKYbQD2c2hzvK957Tpj3JjfK2IFUiczILQbzzn9u+9zpSz7y7
	3gZIn4Lfq1gH1GEM02AHe8fXWY8G+hpH6TEjC7JM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654453319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kF7C87V0x4w77ps8rsYd5aAWNkXLWs8DK/yrghMgyck=;
	b=if9GX4SOVJfch2FTtypybHdLVaCg9MiPd3seb1hls6a5fAeTuyKsexA9VAg1kWxR
	p6xWkSfRJfIxU+sumD4gxLcWCx7ZJNxZPEt7Ocr5uKqjZTInzTYYGXyCCIOkPufvw1j
	rhDCfPkEoVS4x0ozGBjNN6igdgVSkVmej71sOCWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181351a3640-ac3e5eff-7a2e-4ecb-91e4-fdd992075855-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 887c8d6d70d5081030c68c1364a3c357cab164b0718360c79ae631fd25ba1e1e
Date: Sun, 5 Jun 2022 18:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654453319
