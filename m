Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3371365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 10:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651228198;
	h=To:Subject:From:Message-Id:Date;
	bh=Sqmzz/NCTcYX4S4L2DRl2PpTPNMprN0ow2vk5xQyOwk=;
	b=Ovv0V5ddi02WAvTPgshg35P9LxZpAe1iQMJxpsIfo6C5eskEf+gvvK+LYHGq7efb
	mIDk0L738L3LCqap6B9CXAc3UKfPFcsNu+OkAskoqY9UfiPmaryaUiEy1y9l4T+PthS
	bdNCOnv/Ay2Ihv1CR5tpp9b/IuNeWxoKeoEDF2gg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651228198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sqmzz/NCTcYX4S4L2DRl2PpTPNMprN0ow2vk5xQyOwk=;
	b=SFAl1ImIGA6QbR1CDmamrNv5umWLP+pBnsmSPmIXSn7xpGNMWf633OfAUInMaNOP
	auKmq3rN+ziiF6WPf3z7oNN09ktc3C0OZ4Q4kzbwkJ3p9Ws26+zrJa5GCDQHRyXwfl8
	4y0VANz+NwJMEE8o+fvkTS2kx7qW3GXi7ZYBDHsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074dec564-77c86a98-16ea-4267-85bc-3e2a73b1a258-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a77011a089e6296503195f6b22b239d3751396f1840ce31add3c280ac5586dc7
Date: Fri, 29 Apr 2022 10:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651228198
