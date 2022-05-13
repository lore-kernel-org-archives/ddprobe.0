Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A833D6A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 16:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652458319;
	h=To:Subject:From:Message-Id:Date;
	bh=ZnNKdMRX/WAYKEjlIlHeQYM57ZJMndgsqI/GrWuyQ/M=;
	b=ZkJvrs+uZyYNShfhIENxpz8ZECQT83D+dm2mnJnDopD2f/ArQawQjX8RD+k/i5Zn
	hbfQ1e1Lc66KrmpUra5fuBOUaRr6WfdR9RiAf00FX/PGOOQu9ZMF+DGTPHP+TV64joZ
	AkBWYDa9xlC6Ded0EIrsjFtFaA3agy1Ryo2kqC5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652458319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZnNKdMRX/WAYKEjlIlHeQYM57ZJMndgsqI/GrWuyQ/M=;
	b=SaMZie8zkjmIm0mvIIV0NR0haUNvN+5Omnw5i05dUUs9/slVNVJrU1nsf7+g7TeR
	ZaocNQ9Y2j+wOkoDNf2slm7guo40HUkXS+WjRFLZO3v6X+f3326xopeRkGRAC+oHg8f
	Wee5bbiOHR1rhGZ/mFjcajU64bOOO71OkYR1iixo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be30edf2-9e75acef-a363-49ab-a28d-86e6e9cc407c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 086aee974e2457bb504bb0159a6620c691b61cda8816dc023941b16b96f10884
Date: Fri, 13 May 2022 16:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652458319
