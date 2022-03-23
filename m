Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C206AA0
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 21:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648070338;
	h=To:Subject:From:Message-Id:Date;
	bh=2FUIszzEhGXkU5+Y7Bvulj/3sEcUA9bcbknJ+/gQvcE=;
	b=O9c1sDCOxjMSbc0OoA2kjjm/w7hzZoztHVs5I8rkaHJIESPscLHnC6Lk0xyd9GI4
	XS5i2sLQqoEJ+oObnLCLbzGyNVvusOh/rISvI6KqnZ8uI+6KF9eEb/yQC/SsDPFCJiR
	tfNXaK3jmwp5rda0BPzl4W//uTshvJ1P/ANqlgcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648070338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2FUIszzEhGXkU5+Y7Bvulj/3sEcUA9bcbknJ+/gQvcE=;
	b=ZFCSSji/czMrnzYmClfb2k4VckPdYylAypvf11FQ2TC7JQhNSexx/w0p0+YNIJfU
	cKafMenvk7ncZ5csStQ7CnBoR/vXId3CrT8OpvrNfxG/YhaeZ8lctoAqy07biPEFmAm
	7cqkBzXSD1aDXfiILPofWMCmJAGrw0odWmVrUGTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb8a5a6fa-240c8903-c2ca-4695-a11c-a489a0e4ae13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22fe7ca44c3d241a3c4af299544e4911f2d41765d338ecdb515da10650640e84
Date: Wed, 23 Mar 2022 21:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648070338
