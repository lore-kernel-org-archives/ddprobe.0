Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B58802
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 00:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648774018;
	h=To:Subject:From:Message-Id:Date;
	bh=rTfkh1DanWKGpjxjbz6+01P43kLBc01QlnOALLNR3uo=;
	b=kPmAQN0lbqXo+IT7PaxrWcAIltEI4FTDn7LICYTVVOM8tFgBHLgsKWqrr9ghfQPU
	hjonBBD89JDgdojviJfY0U7X+ttiH+cF/Exv0CnnmIwBPseCGRFkDRitOVPBWRQItxm
	LdszM3iVofMveAo9bDosoZlMy1I9nA/kSIbl6vfg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648774018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rTfkh1DanWKGpjxjbz6+01P43kLBc01QlnOALLNR3uo=;
	b=G5WmXvBVebFWmDe9LiL39MFw5Oo8mDbTgYCjrJxfr94WzySmvJh6vWTDr5G6Me3d
	W7nW0ocvkTBN/7rCfdZB6drbwpU7tcENpF8jDt17fo30mErRz68fdbkVcLLXEUN8Cq4
	lF9TcSLcDbOZpVyy/XkK5SjERNDpDFiTBVb7xJoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe296f4eb-00ce9ba5-96ac-4e5a-84ee-b6c6fe0563b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81f530c49dcd3aacea29ee8b03da135bf0b89110a870bcc19d4ccbf21b119257
Date: Fri, 1 Apr 2022 00:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648774018
