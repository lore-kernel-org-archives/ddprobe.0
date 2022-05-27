Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7031851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 11:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653651359;
	h=To:Subject:From:Message-Id:Date;
	bh=LKmoLPRgwgrhetmUU6rotabPHdn3D0lnt92XqCxO3oY=;
	b=ayT4RupxAjponOkuP30Yrmhe19j6GxcVxdpG7gn4NMy6hbPmnd2+K765yc/oTr6r
	x9UICKkLO+0a4VnIKhIbbrx+EWIOgDbjz2a6uP08dRDmvS8b+jx5g6O0zdiVn+O/rCN
	iJzUQSKtEkLs3zgKTReZHRCBLmB8OY/uS1HuJpiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653651359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LKmoLPRgwgrhetmUU6rotabPHdn3D0lnt92XqCxO3oY=;
	b=DfKrCnIs3rG7BrwwG18JYSqp/wSATifkL1mUAz5Psbe6NrGBpET00yw/v7ay+rDB
	NKmJeUE5WyHA3ek4qaVqa5fag5SsyHEFXfGz2gLf+9iDRcmje7MP+W+ob9vy5/Bp3ai
	AyxD3rfcmkBAhufdNsOAOPk1XRxIqGYdOGFl25UU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181054d462c-69f0ae44-30c6-4c42-a696-8af9bbf3ed98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fa79a9502f8bc1643b58244190c71575c224923d64f0281af5321d941e1e62a
Date: Fri, 27 May 2022 11:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653651359
