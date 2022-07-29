Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3813A7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659063052;
	h=To:Subject:From:Message-Id:Date;
	bh=XfxKN7m+5drIzufXZ8RArRZK+4ufm+bHf+3ECtXnIAQ=;
	b=aIfTRoTCixFh8PTekTIATTuWJ32xgG+CtYe6cPdnSgzNdevghX5XPYabJl/TsXdR
	lYZ+fQglbRgyfwoKCR5LqZ5WtDBfkHTCk+uUFDjEzD1WihUhHPpb4nJadE64tFenOBR
	l4ZyAwwd1qXES1ILz1cSOzF27hjMYiJQp/ZFxls0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659063052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XfxKN7m+5drIzufXZ8RArRZK+4ufm+bHf+3ECtXnIAQ=;
	b=MV2y3tidm0a0s5FCmCQaqb+xSMqNuzhTnnIZAsTobQlwqaeZX7eLWxRO7XJcjfL1
	FkWwHvBLExToatqJMUzO3xjsXPrKV95z/FBtvq83rE2z+PkyX2fX5aldyD5R2rYCQwC
	FnbP4eisI9Qnx1SFnPVPb3lHECVstmUGRmCEVapM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247dd290f-fa4d6340-c9eb-4b5f-b877-88cc69289292-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e03269a878358d99b7ff5b9b57bccd8d938acaf2c097ab8878a2990be32fe0a9
Date: Fri, 29 Jul 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659063052
