Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3BC7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646293284;
	h=To:Subject:From:Message-Id:Date;
	bh=WPlMWjuw6/ZwOBSqjmHxKDL0Z/Q+3AXixTivjkoaBiQ=;
	b=alfq0zAYwJoARpqJLWHV3VBUsAm1bgI6pl/rU4ziF2hmyoYDZmqz2DmVOJeWcNR5
	6zRYD0nYhFhzAczDVGEj3mmnea3vcalBsG4MrsJoCx53PTilZxLOBrSLDdQ6MVW2SVd
	AQvSmZgTBWd7EsNaqRGsITGWkEDJ6Y9Qwq5zSlAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646293284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WPlMWjuw6/ZwOBSqjmHxKDL0Z/Q+3AXixTivjkoaBiQ=;
	b=lxg6C2vveXZkAs9aGzohru7hHIOXQ9PYjvPqwTvMJxmHgPt4jGZbCZmMSKzCMalA
	/BBZKDTVCaZlibL3RgUS0HVa21LbGu72sulTIAwokNGrlgYGCpgeVarbtgNv8ni+Llq
	W02GcBRdHdWhvfA5ppEJqBUfW6PwwdoMNrUPrT90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4eb9f7dc-37a395b2-c89d-4a30-82c0-e2baa4741123-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdf40e2f8183f49506dd098e907fba898d7e58ca8d39b92d13c5fbfd29fa9ad1
Date: Thu, 3 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646293284
