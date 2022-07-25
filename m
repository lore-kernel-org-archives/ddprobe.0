Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F625371
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658732212;
	h=To:Subject:From:Message-Id:Date;
	bh=SF1v/cj1baEI9sLMBEsxR47jLyPC46uKVgClNadztNY=;
	b=jpTQlHrN1ipZuk0uIlElek2OUqiOMOnQj0ca3TOiNAg1LoOtzuuIv8LixCnBpLlW
	a6rK33UFRPeJCyx6xQHRXfhw5Ge/U4mHIjiMCZLR/t5b/ejqO2ubE8wprT/obeCsQt1
	wZtDIJ3a9mao1gqQ7zWos58afZF2GJhVW/m6iLB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658732212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SF1v/cj1baEI9sLMBEsxR47jLyPC46uKVgClNadztNY=;
	b=cMnfp0BLmXqAqRgfMB6WDVErnSk6yOXmYPyDq5Gu1XcHXTbbZ+EQYjS97zEY4+oG
	SvVZiP7WiHXuIwr7DNXEMkXvvfjTa0p5ukmaahi3ZC+Yv6jV8rGCvUFfrkSqOr6dP3B
	pAI3OP7v5Nen+sMgTArrOhysqoSyN+4Zxb3bgZxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823424f058-178563b9-09d6-4a9a-bc67-2d936081f26a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c718bbb4b9db65ed0d1dd734b63e9658be9f39ca963621360e662a75783ff5e3
Date: Mon, 25 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658732212
