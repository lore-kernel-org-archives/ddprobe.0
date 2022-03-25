Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567F97E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 05:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648184818;
	h=To:Subject:From:Message-Id:Date;
	bh=Tnnco4xXyj+CP74HMMeuUushGaOPYZly/1lu2g7Q5HQ=;
	b=bOWrq/0ML3lkWcU0l1hbDvGcmsPrt3k4j0so1Mv87L8P+p7/2yGTBBFnb7X+WIxJ
	rELhSUAfwQf2ZX5/mRhlnAma4Uv/JSNNZuxA2mNOO3fAkH/RRUgveHG1d697nSKuT4D
	h0G6Kt9+osXDrXGmI34Mi31m8uBklitnjKt3D2AU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648184818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tnnco4xXyj+CP74HMMeuUushGaOPYZly/1lu2g7Q5HQ=;
	b=XiCb/frlMGc1DmrXchOPfZbA605+xaXQhpYeHj1sS1vBM2YdjfdO/iVl4US8Q6bc
	hiP7k9RNHA34ztBjIoTxveiWVzgveLa+l+Bp1McvtD9mOeGaywD43JivLSg1ClBGTbM
	t0pRi5xXxpVXPeQW5dDoOFJHy3n7oY316kV0lUHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbf787aa4-fa9a5f48-df7b-443e-a751-264c9ee1b459-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f25fbdc63ea240b3fcecaaa569f8b6ba07a72a70ffc216593ca953bd89c28b6
Date: Fri, 25 Mar 2022 05:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648184818
