Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED3B1FCE
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 19:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652900939;
	h=To:Subject:From:Message-Id:Date;
	bh=Jprwquc420gXYz/KgEc3BFLxeq0VdXrOxrVzNkuFC0c=;
	b=AIxrlOpcbsKsQ2ct9Jchaimlkj+pS2GwATYjsDpisfLR/jJMiWgbcXvAWQ2vnuoR
	5L3/T3kDeDK55oNInbfCoOTjQPeWFM/ZARQWbEY8Mg7IMYfV3UG7M7K6V+8u9P8Ah3a
	lpl8yDS/CX2RUvh21yBDdBjhUiDoSPsPHhCCXMOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652900939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jprwquc420gXYz/KgEc3BFLxeq0VdXrOxrVzNkuFC0c=;
	b=GRzogmgkuRMn04TYzXK29TYDfae4goNe+0JNp/krlhdfR+aXhLSCUsNogF0fx1BT
	upsaC+AopLBRtXK/CKnTw5K/Avedm11zyk+0UFHktKBgGPyv2lHI9r2xijQGBMJjD8V
	PWyBcth+bLUJZsvn89oQaKxP3aqUJmxFFpferhFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d892c621-fea0aaaf-5ac8-477e-b968-b59439ee1a11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08059ed746fd28f55a029b2cf9bf55ba3802b414d32cb901de886500204d233d
Date: Wed, 18 May 2022 19:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652900939
