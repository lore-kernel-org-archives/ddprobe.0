Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256B07C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 13:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650720718;
	h=To:Subject:From:Message-Id:Date;
	bh=UQnZ22HXK75QkSVi6ckEDAs56Zdwn468B6Q5tyjpVSE=;
	b=mQZRLidcmxj4FlQ+s4MpF00X1fNDClLKw8douOEtet5AqhOrjuPGKjGGgE8KVIEp
	AEYLq/IlcKojupI71isK37u2mcloZUh8SF+PIN8gmw60WeXS0Onay81AOxWApYOpOoh
	kxRTrwspvGIA7985kEBZodazPw7NFYg+bVlopQKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650720718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UQnZ22HXK75QkSVi6ckEDAs56Zdwn468B6Q5tyjpVSE=;
	b=gPcY1WbG/qiVC4AZA4t5uA4hPbWrIabzoyySyBDJzwCxCe+hKpYMHKnwazVAtVPo
	ardzoffQsD/kAnmftZ1PRkelkneJQz0jrWoQE1QL4vIIRatOfOhZNgI1bJW1ps5zFWq
	cL8msQxaOMDOLmMMCQ654P8gnhvP9uuKCwr7bOLY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180569f3dc4-dac999e8-29de-44bd-8b7d-f473f61a60e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12d401bfe80043968f175db2fa6381fd5951ac27f3b6ef7b698d4d68a99df676
Date: Sat, 23 Apr 2022 13:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650720718
