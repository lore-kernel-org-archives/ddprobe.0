Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EBB7C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 03:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648609258;
	h=To:Subject:From:Message-Id:Date;
	bh=lH+ZLSD6HGp+artctUSokURvzyfxXaDmaLZIKfiIp/4=;
	b=PNQtC9lTWxfKG70s9XVt0x14zRKMmLeSOwmREQ96SnD9QgCfxhEaCATvUQTws1Me
	GiVfOxDF3n4xShInaTOfbDDl2a+RKP8DRYcIIdVdDcaJ3qfWE8lh3o3Mf5xJW0OtsT5
	w84ZSMTAW29jUji6pNIArZ1vBDL6feHngGR1SoLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648609258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lH+ZLSD6HGp+artctUSokURvzyfxXaDmaLZIKfiIp/4=;
	b=LQYqpTqBnbR6s9+mbl5fuYwA5StSrRQSTseQbjW44Vdm2LuhDeNQ7IcMO4QV3gvj
	ReLI6HqaHO4xmLl+qwyjiAG2c6jadODc77VIUVZdduodZ7KCJTJqjPSeGED5rRyfP8U
	mNDDsL4ftb46RFdtv1MZ+YKmRv0XYvBrL2lxr0C0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd8c4eb3f-fdf1be9b-af8a-441b-8b3c-fcb946f6cdef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08da8925aa86b2b4d4ccbdcbf42dd2fe78e75168332eef1245a70bd8b15e09fb
Date: Wed, 30 Mar 2022 03:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648609258
