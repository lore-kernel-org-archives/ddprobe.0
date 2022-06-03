Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B3BED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 14:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654265639;
	h=To:Subject:From:Message-Id:Date;
	bh=D63iWmmpiTOFszwz4UPOpucYDNin/Mda3NYDtIYmm2A=;
	b=gRwSjJfaypjaOrlFb7HquaRlpq8O0u5mLRHvTZ6Bt+TzyD/ZBGgh6o0knesZ074R
	3KhrjzPbvA17H/LUCY9RxzmELPpfX65fmEF06zuBruWDTZGLmXH6umVwcUaN9/NdhXO
	7eNSQgADXAlC8nCpo+6VSYEe8ipNfMedhnDr68p8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654265639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D63iWmmpiTOFszwz4UPOpucYDNin/Mda3NYDtIYmm2A=;
	b=U1ZyZrxiPHWU6jJPZbMW4yepmwUUf21tPyoUc6obhq2F3KlR/fmMaCC2/azu7rA5
	VCC98YKE3DYqgBxxjbHY3NqHL7HW9zSh9iuVJCt6vdYXe3BPrRDnnOl3+se90T7Uf32
	2ertr7gW/Fz45u3pXASwVEQqQa/vHsRl5Bt86fRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018129ea715c-e2e3f929-5822-4c54-a130-413532de1734-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 672f8b93268ed4eb9e628dcdb59c296891f31de1127d1d84572ba19c68c9aaa0
Date: Fri, 3 Jun 2022 14:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654265639
