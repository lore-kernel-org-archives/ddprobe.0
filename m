Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DE010E9
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 02:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649645278;
	h=To:Subject:From:Message-Id:Date;
	bh=T2G6p6GTkAhU1SauXO45WrFd7HMKuEBujfV8lgiuo4g=;
	b=VWKUAxfzFSMyxXUXPsfF6Aoc8cwQSMWgfN4IA759xwdcUCaVpB+dzevwb7iZ9s/5
	jiAwUKGL5ckPeK7X/0ZQdkjmIW46qx5g0s9EEU6CX13aiQSaJRSC+QcitUwyXdENGqL
	r3fQzrm8m1MOtwvlH4FvFjMdsb7eSGLnqV6K3QII=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649645278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T2G6p6GTkAhU1SauXO45WrFd7HMKuEBujfV8lgiuo4g=;
	b=BfbFF4QMf9KQaUtAP93VhqU0DBwZeFZodRKtbuDlbmdyanvu1PLSWc+7o72GZsYZ
	XKrO3+68e9+blCYaFmh15fg1BXM4rIAGVI/O/n9Nv6vpkLP3ZGbHC6vuZTnU1ZL1F/u
	kAYHAp/+brNJ3jpHNxxBOoyKo3vCNwrIX445UKBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018016855439-12c8e5a1-bea7-4722-acff-c972e82576d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 642e387bf4c1052798e112e14c67d8d4ae1b1ef2a6020d5662899f3f5b699b2f
Date: Mon, 11 Apr 2022 02:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649645278
