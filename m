Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08187C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 19:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655149139;
	h=To:Subject:From:Message-Id:Date;
	bh=ePGNAaqYCCA65LFD96Mv+0qylng252d45fcWRLEXF/Q=;
	b=GBTh3G8SUt/22vOkFmcBkYNq0xy0NAN2ZLrCpgRp4rsFiO4Vj5c/aXVHJEPcnpfD
	mKXiB6HJBdH5BapIDTtqDLIdexaGXGDBqRVkzysQiVz7LWOF3Tbv33AApFTwtIEnJ2Q
	xYo87lFwjdUPrS2x9uHLQOdxxCtdF/WBXW9QoWKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655149139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ePGNAaqYCCA65LFD96Mv+0qylng252d45fcWRLEXF/Q=;
	b=NehlItbGze8Y1382EO5UBnnUXj6/sForxKA+Of/f3GaSpyeTopbOI03ttnqgUF5C
	2cM7dYtxZWRtwdFgn+seZ5Fj/stuR3K82kYou72xoAsUQKAfbZMonnaOguvTkOOjk3f
	pxHjUvxp+O/xs+M1E0Qi74j8b9bTeEynv0ntmDGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e939514-facc3ed5-d238-4d0a-bf6d-d2901a51f0f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df986ecea4041763019bd7432719cc0289344369b2450061cdb417391171ca58
Date: Mon, 13 Jun 2022 19:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655149139
