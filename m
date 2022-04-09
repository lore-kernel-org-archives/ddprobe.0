Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047AAA52
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 21:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649541478;
	h=To:Subject:From:Message-Id:Date;
	bh=lte2OB3OxCZbvHIWB6F9opxSNVMQDTrKewvtbPOhtsE=;
	b=VxkpT3hJs9wZYfSWjPa8DtUuBRGPnkuFvmIgyG4eb3IdamoxbQIg1CdBUj1d4zsr
	4V+yygJDFRGD9QErVpx6OOBv/t4GBr4BpcK+LL1n9jyZm4Cg1ZnF2RzLrBz2hpZWCIw
	ckW05bnlAsHDFTO8Oz817mRxLxvmRgk6qohXXgsk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649541478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lte2OB3OxCZbvHIWB6F9opxSNVMQDTrKewvtbPOhtsE=;
	b=aID6YueBcbSLUhQ6WADlKVANJFoEVnF2flikRtLFc4vDHhO2ZbCyYM8dCq8BpRnZ
	0UMX6guH49l0XmelwqFAfWoPhtLetYG3CqHVnqgfu2kQikbKl1SokqSll8CUfhYjgK4
	knURb/c+A392KLNNa6n46GjxkKwydAph3gX4rRyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018010557777-d98b3ebf-6036-4571-9356-27baf71fb995-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39b018e97b2ae24e4efd795d3c07a04b42968071e08cfa078eca265e3cf3d5ba
Date: Sat, 9 Apr 2022 21:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649541478
