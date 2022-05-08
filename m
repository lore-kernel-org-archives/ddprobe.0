Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3F010ED
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 14:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652020378;
	h=To:Subject:From:Message-Id:Date;
	bh=NIIcmn3359d6ZeZqrpYjTmKFYe0WyCY2P30X1LpPWIY=;
	b=UVpaSFQ3eiy1d0Mf8+BCx4zL+ctd3mSdsTx7Pmu5f+gMQ2vMQxmSe6r8Wd2b+hu1
	acmT9k+txnOk2rgD643puqmx0fyS09x630GAADJdWk+2XKWWarog0d8s/TmD7X5RM9I
	emydKMR/+LA1OJWVD9B6zIkdYBPckmXvC5CH4EQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652020378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NIIcmn3359d6ZeZqrpYjTmKFYe0WyCY2P30X1LpPWIY=;
	b=BhXeAWKQEXHyfw4c9rhNzYI2Rv/80sg/mvNooKpHV9maB2qvMIh71wslER2RiE50
	lxDMMQLHXViIGSU/g3CzdWtKGlxlF92wqRDozB581BsgyECm0dsyl9UaYud9+KomSXU
	Ieysx3UHzkSmmU9s0uvLPqmMT2HO9dv6qyygd+QU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a4167b21-bf0aa724-0e9a-4e6d-988b-0a3cd3de9fe0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4247f1df900a249745f48d5a79a7cb06e3b1f1554053283cfc9d826c4889484b
Date: Sun, 8 May 2022 14:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652020378
