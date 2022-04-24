Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228C47C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 03:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650771838;
	h=To:Subject:From:Message-Id:Date;
	bh=fmtbwCwk2fCMalmuxrj6W1c4sZdoO5kx8SL8uMmVYxs=;
	b=l7A1FOi4A1G6aqKXGlKaQTCfzdfQFiM/tHgQyY4Fja9H3Zf9zYj9Ep7lCH3HEeFb
	nxjucILgR61fmEncqZKJ/60vCnGAH/7nxMTEeTYZXyZTf7eGySW0bBsxuZhSLkkX1ci
	u84gEQ3mIDczr524TH2M2Ro++cL+p4+UovBNHPAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650771838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fmtbwCwk2fCMalmuxrj6W1c4sZdoO5kx8SL8uMmVYxs=;
	b=jA3QiSEiM4oXzZOY4r5J6GTcus1YWLfiE8HCUY7pG/iLBm4yrt5Lcq2ni6Spp48r
	8llgA9c/k8UmU+tlDjDE0D9n07Zuo4j3GiE2Tg+cc/aOUrwbi7lXlJhBN4NuMrvcOVu
	95eERO0r4YrEk18rSTz9+FmACcCwUmcQN9PbMw3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018059ab453e-440fa70d-2610-41fe-a065-064750fb7242-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65002a8c158c544019944528ef080e05c132528c94388d9d1a424ed3df3bd94c
Date: Sun, 24 Apr 2022 03:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650771838
