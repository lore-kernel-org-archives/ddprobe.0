Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7221844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 01:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644975985;
	h=To:Subject:From:Message-Id:Date;
	bh=bRsHzGHsoX03DvyWgJRFg2o4AV8wjJLKAR8Djth0cSM=;
	b=UsmJJirU7cshkOUcWsCLWBbOpRetRU/XI1Tp3250kJWCrV5EbQyHMAfBDPlNzuZL
	B1XVODM5wLajUSZMZ0ume/QM3qo7FFSuru6merkGGQaerIz9lwl0WvSVU/QrMWEnAWt
	81/Q6q767RfMtXWgbiLHjQx58f0OW2sQswJ56Du0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644975985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bRsHzGHsoX03DvyWgJRFg2o4AV8wjJLKAR8Djth0cSM=;
	b=Qx5ClHQs7d+fk4Z8cSyp4lAcS8Zw1MKfj2h+66A8sa1ouGYfhCwWFlz25NMqvPs/
	XBdIEDOJraPOxOQAZT3Q4BaY3ePeT+GBM2mzx6pRFonSsz+GkEaGjPnvYXlqXi9bpuK
	RfNFMfJcnVgi4m1vgR1nLMb9gRj2Uz85yV0JpCKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0035906c-681df754-36bb-427f-b8fa-2664cc825578-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9cc414ddc84e771ad2e17082b3ce80aa4c88b2d2982aa2ae49cd4459d6144ee
Date: Wed, 16 Feb 2022 01:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644975984
