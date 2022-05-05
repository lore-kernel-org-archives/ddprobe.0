Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB98E7F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 05:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651727818;
	h=To:Subject:From:Message-Id:Date;
	bh=66MZ95Lhi1IzZxtvAT/sBrG0yhT5OyCC06sB6G4Fee4=;
	b=c3oNcRi52dCoHeMkMWbvgIWsuTT3sa76fxPeUH3kw4gDgLWWrKRHZF7QnkCc3hTq
	ZQenpekHmlfwhl7j/7NLPh213zi6wuUB5XEk0Cb+14bjMzl4rh+bIAQ3nHBCWiVwbBC
	sqH8r6KsafZBPstnkfjpIfjrljMp2wZywCxC0mRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651727818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=66MZ95Lhi1IzZxtvAT/sBrG0yhT5OyCC06sB6G4Fee4=;
	b=gwnScE8qmOwtJ0TDZkIldHDQ9m70VpqdnDB7+gN6TYK3PHfhS56nb0b1LPdp/hB0
	oZLrupx/xtP0qH68WM/6tAy1ARtNfPAF0n65vrjSxdYUSaEtPg/8bvmSMXjbBXn0Q69
	iHm6B2IQPFyCHhrbgCBHjajERQPpDFvZfZQ1EsVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018092a65e15-e96ac105-6530-4784-901d-e1f900082c51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0af19ed932e212b4d104990fc36407183ba8b3fb26bf626ed0e6839e7d81f877
Date: Thu, 5 May 2022 05:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651727818
