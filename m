Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DC615AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657685212;
	h=To:Subject:From:Message-Id:Date;
	bh=je1YzS1J8qB8ra0dwb2hzO8/jXhD05ntrhOkNW+cWBk=;
	b=hOsExthgNZp4rKUMV2YM1FKeY58i9H22H+Hr/XRScGRIkJg/HBfMu141/gigapCS
	dUGXfplr81sWmRRIlMl3lc6gTSefvTFIqNfjaDwPYYJn/MHAcMDCbyLvL73zVSHI5KM
	ExePGMDZ4a63zA8yF4DWNWY+UI0+KhdGFZrwDqJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657685212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=je1YzS1J8qB8ra0dwb2hzO8/jXhD05ntrhOkNW+cWBk=;
	b=jaqcP7+5PT0ewDih2YcrRDStHFRZG4da3pTKjaYBZoTczDusuuFrUJhu7ljuZ30C
	wYSGup97uGOO39rMWZrLw+Jk2bj6QNnc5hKBMi4EFUCaEK/4YiT5Td7giHes6OQPEtF
	1z9x2D35Rlm0cu60doBWBOHLEM1SF2Zb5AALAqvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5bcfc65-55f459a3-9c49-47b2-aeb7-05aa02ea5d00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f2bcc55bd7adb9c83c5d9f8d66a42b87f892c7f88200379659eafbbb81fe7df
Date: Wed, 13 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657685212
