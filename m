Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3F817C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 00:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657068412;
	h=To:Subject:From:Message-Id:Date;
	bh=cQqv4DCTm3DCeH7Q0J+r7Phl/9HV4Y9G6wKti4O8Uuo=;
	b=EfTiVr6EHjg31sREn7K19iomV7i1G/LLE/z8+iFEtxxy0fGB3qb5iAuY4x2cBp3D
	pRi/CUM/N5kttM10hfZ5dwTuccmVTlCRmID+u3YC7/g0OJabkkPthjPa7Go+TGvducW
	Y6pbj75X30u2sEkGkDt8Lvr0mMpb2aK75N3fdG5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657068412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cQqv4DCTm3DCeH7Q0J+r7Phl/9HV4Y9G6wKti4O8Uuo=;
	b=eJx7wtl/l2c9CL5szzcpqaSjtkorrxzNtO7ntTGOHWceLvdqipnT752pF2ka/8Ve
	FPL7IVDgVBiOepx3baL7PxPyVaZL9Axw41fN0V7gZtKVn5jVezP1VPim1/x67yp8ln5
	ma2DL1hHHqLTboVK2fVH9twyEomWERzX5HqE4LYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0f95db7-bcefd23b-5d5d-4449-a3df-cb31b5a03ffe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1f18112391dd4d70cafb4edda6f21cb74cd4f02a6ffe8cc4105e986ef777709
Date: Wed, 6 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657068412
