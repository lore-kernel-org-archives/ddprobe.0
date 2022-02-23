Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A087B
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645605685;
	h=To:Subject:From:Message-Id:Date;
	bh=adrJrQbR55q75DV4Fp06pxdeMCvhVgTcr2Uwc5jRcWw=;
	b=gbp62G6X8wOoOQlYI6WdBDMsGszHR7tueqchEaPRUkEhbMT6+zlgs+gx18i8CcTL
	G0QGMlbTdpnRfRYgF1gl9dylUQ8YxoIb72hI0yjFLSajEEG4QliRpjkid8Vtf/+XDoP
	3rUUKu6WP2d1vmRMVIFaMWOm1dLfJTN3CyNyfShk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645605685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=adrJrQbR55q75DV4Fp06pxdeMCvhVgTcr2Uwc5jRcWw=;
	b=lRvk5iu/IB7xLaANziDq4NjntOcwJixjbeZXGuANYhf8Elom8WnDpKAR4abr1457
	Zu2R9UQ7ODgn+cDF5qfcE1k5EPZ7ZOP/KSdcm85z6uoIKZuIvva3IEe+rQe9rHKqo5L
	mGs6/gc7FIuMa1U21HhtEIUiBmw4Gsmz/WIS3/uI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25be061d-e369d02c-3ac4-46cc-93d0-a9c521c8702a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7db84a95c30294857287f9069e57c4faae21e5def19cbc33e39973474b70765c
Date: Wed, 23 Feb 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645605684
