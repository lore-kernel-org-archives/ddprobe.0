Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0C44372
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646731584;
	h=To:Subject:From:Message-Id:Date;
	bh=xdisngI4wHbC9en/cY8js5T16Dn5/QxPN7npkRWkFA4=;
	b=OrtdZQxtovYWodwFxGQv/vQSPrqGCQRnIRmi8oc/L4ByJtFvH63TAhcaTqTPnAFS
	J3b9DyXEaojo//dgDCW17TyAFwIetmcDpnD2CZvJrlD3eBI2q3xHwapZOL6vC84CmYW
	Qupvp9sX1S+HU8tC2lTc21l/Jj0befixgS6P2waI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646731584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xdisngI4wHbC9en/cY8js5T16Dn5/QxPN7npkRWkFA4=;
	b=E+y3xh4b529++4qIo5g5hM30b2AMf4sveKmVZwVYdEE3pEYH8r2XNSEQmaQGr+ee
	QVbGnyV5MRgxf2DYE77jfF72PMlt0vzG89Qj/5k4OQ3RWAgFKB0vf7ocDLilg8tQhEn
	A95c1mvrmv5Z0zod1pB/GyJa9/BRzjmcM+ChCTiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68d9e54a-c7729785-935e-443d-b328-6cbd8527e673-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ebeffddd8cb53a9b2492b2232054aedc354dd90db6279ff22b10e4ca02bf425
Date: Tue, 8 Mar 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646731584
