Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921D91373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645681285;
	h=To:Subject:From:Message-Id:Date;
	bh=pqa7CCJ+fsFo2Z5THnfdKOMc3wSz3qn46s+V3+BPO88=;
	b=QAL7OFtGv9utRSchffPnCJzZO0nl8XJP1wi1C+RJRJTh8a/y4aQI8Ol3AvGWCt8+
	YTL/71EAOponsFJmZnpdlrtlSeoA5xYwWdcJ762TYLKJ41AvEOdwSHHs0WgkMT3dBJk
	zGLUbqUrkV2DM3St6c6aReKSFbGIrbzBBMWXqIZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645681285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pqa7CCJ+fsFo2Z5THnfdKOMc3wSz3qn46s+V3+BPO88=;
	b=A0aJm+ObTdcfkSJCTB0v2PGZBAjTASaHRpJPD57p4WLstRsJVtXR288ig3DXLmr9
	UY21K4rLCCzg47ORpQwlZu2TV2Qo12NFmIeuZ6xTSucvGWte8w0pTXsaZIORSV4kYSE
	7W/wPaN+M+dPQHVy2G5trLtf4Y93sDY0U+bUUktw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2a3f96a3-09bdc011-ffb6-44b5-aa56-49215a067a94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20aada147de01410416ea3c70335ff5ca0f77aa21ecb0321de3f8b7c7639f26a
Date: Thu, 24 Feb 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645681284
