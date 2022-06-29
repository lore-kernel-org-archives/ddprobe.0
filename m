Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A532575
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656509812;
	h=To:Subject:From:Message-Id:Date;
	bh=IwCvBm2RYB+jK6jiQ5Xl979T/fSSJtYDMxcJC0r4JNw=;
	b=Bz/nFVYV2FkorKIzSbCGax2yGFXd8YquiPSyT0vAhrHFTry35p4FVDaGO1nowne3
	d0pxXp9d35rVnCiSFdhAhQQLcwQXh3D9mFXegr5zYi6bHQ1uB+d2IvKVa+qcr3KE6Mc
	vJ8S3oSRvrOKnJEGxI/0/3ox753SgsM5BPmcCCRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656509812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IwCvBm2RYB+jK6jiQ5Xl979T/fSSJtYDMxcJC0r4JNw=;
	b=f1zIz2lm+uOGeg79i2Ai/egSMnrjxVAoPxOZjOQIhAp8OBs560q5PRWkg29rtsC9
	YhWUF9Kq/qsr4J/b/+FsL5iHkxfJ4pVfWpJKSBxAU9zntv2SGzUiaj9SNMgEqpMVPSC
	PbwpvcnDKgVD31f0lBFxJySBp2DIKvZgdDeS5T/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181afadce30-fb80d3d3-0a9f-4ae8-a532-9696b68cedfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b69acca3f48692321304158cad41765f73df45fe97711b8d933048693351f8b1
Date: Wed, 29 Jun 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656509812
