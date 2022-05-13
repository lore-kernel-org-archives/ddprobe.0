Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6012100
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 07:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652427659;
	h=To:Subject:From:Message-Id:Date;
	bh=BiqtA80OKwDtgEek6NgZK9cLNH/DYWF2QIHo/gFHiPk=;
	b=FJatzgrlnV5+8AUCvLtGnA3pqf/n7GVykLY0fTjEJt1Rbv2m1bnvh++YGKB4fGKJ
	CkgzivLrPEV9t8JRNbJANjKxwYeh/4iRDijiDZD6b7yH00EhRrokE4j4t0q2JnCH+CK
	Mkux3P85/aVuSaShzVyoe0PE8DE9T1G/NVXR/ezI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652427659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BiqtA80OKwDtgEek6NgZK9cLNH/DYWF2QIHo/gFHiPk=;
	b=fia4f0moBnDVcGSR/PzZDToROemAapZHgBnuBiAc1dgV9puUxMwyTDwPu3Pm6kZ8
	/mUO3YbP+g2SBvNyYdGCzyOYsTWQIAS79Em4fO8DQqI2gq0395vBrLr6PzjYPga9p/N
	L8Vrpn2+4E98Frtrh98w+YMcXRJ5/KTZbeb0UkqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc5d1815-b97747da-1a00-4aca-92f7-8f06576a70ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93121d4e7c6a4e5fd0537378c5d1b0b7a789c9f7ab0bef315fb8cc4cdf23304c
Date: Fri, 13 May 2022 07:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652427659
