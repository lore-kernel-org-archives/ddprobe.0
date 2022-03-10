Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCE918D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646935885;
	h=To:Subject:From:Message-Id:Date;
	bh=I9TJ0bhr+0nlpHqcyGd633Gj9QXLZkbJMDDiMq5TbVM=;
	b=iV5m/3oPbTYMTz/7B3Ab1Or6Vw5hGyjzSJTrB5PGRUnloJ2SGCPPwwtvuDt0sAeb
	X2kHMYPTD4BVqQxNx7t9mI+h6384Mvt04PCIoqd7i36FHA6u/hLgCm/IsrTdUQbazpV
	3i4g1z1I18Jan3mgg1SXS3rFP87a8MrFl+EHNTPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646935885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I9TJ0bhr+0nlpHqcyGd633Gj9QXLZkbJMDDiMq5TbVM=;
	b=VFwvXP17TH54Vyxz2FbppUzkusXV3qwoN7HeO+UoFRhQqMEjmtY/IgcEWy3sOHDO
	HhJ+5h61D6UN9vzh+WRUVDfcQCe9751UHDYxjKHMMplOQhXoyHG/hLRvO+XJquvLhft
	mPpidt1MQP2OVo8bBcAO7tEXQWzWrYcfhN6sb7W8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7507440b-c5b9f118-f608-4a91-bb8c-812f33d4d9f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d0b02cc459feb524c05efb24b1205306ab8e988dd1f9f59e31f13afa17037cd
Date: Thu, 10 Mar 2022 18:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646935884
