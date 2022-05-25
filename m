Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FAE10E0
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 15:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653493559;
	h=To:Subject:From:Message-Id:Date;
	bh=FYdK6YGcjILbD+jHS+tf62DA302qNVga3eqJeBZbMP8=;
	b=Yc2Z4HNzhbDOothEC99SF89xdScBE1l56nt7kDakrCMgB+vTx7u0qyVv/pizFz06
	3RVlUiR4kUqFCq2+coScjmk1VgGQ+e59F7683jef2y8nYpo3BPOhKUrUQ67Xa04Dgpe
	xZIVIlLpf1KcEVbHY9hwKSjQCvQP2wce/3nL2NQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653493559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FYdK6YGcjILbD+jHS+tf62DA302qNVga3eqJeBZbMP8=;
	b=EH9LhcJ/j9UONSjdp4a7Tta1r87/k7LYh8hVVJ9Jj8Bde/gC58RYtUlLRWHV9Nnc
	9kpXrewHEsWWie91vxmgy7Q2Ev0GfSVFZxQzcnqDGBaxtY+ng5LxJZ1fXNLFCn5PA8s
	bgLC/zO6a7yFSADH95ZRdDa43ME3CabWtmSWFots=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fbe56fed-d2ed75eb-9a70-47e4-b549-7cf7df2ef76e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f6d5673eda20f5a7268dcf7e3b540521034bcc0c5329683c50893ba1fca7143
Date: Wed, 25 May 2022 15:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653493559
