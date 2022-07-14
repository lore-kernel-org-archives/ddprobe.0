Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF02E7A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657774012;
	h=To:Subject:From:Message-Id:Date;
	bh=q9rLciakwCakXHJsKEb18CvIHPXOtYbRK7UZSJlChuk=;
	b=AGBmG0Ldo+nC31rTFmGg60IETGqsXkuFmrpCW1yZ3podNT4MXd30zXz95uWP7mu4
	R62FfsIFXHYJJtAEx05AQ4e4EjhPVzxkU6cj2p3FcSREih5iTLYYgViN6YFSM782tMp
	qya56GuESlfDpISu0gAD91UIuYcu5MxJ22+lhMVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657774012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q9rLciakwCakXHJsKEb18CvIHPXOtYbRK7UZSJlChuk=;
	b=kzEckucFtd47nVOCUdIdlLVtHLhObr03RJfUJ74hbL9tQnCtJifEm7+FHde9vL7k
	BPhmfDCro+3DrL7htok9RjZw/fciHrphMtaBn/VIvDLUc7UKCskUJj2bOqcSBw20kL7
	0hF1Kk+ijwvN20lmSCliWprsMA+mg5axQbnWna/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb07f794-f582b018-3c05-4b43-a538-d90e4e76ecfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49d9f6f2a6148d60db53d21b54107d77d21963e8a6e2381709443e8cdfe9a798
Date: Thu, 14 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657774012
