Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B14F6153
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646263885;
	h=To:Subject:From:Message-Id:Date;
	bh=iWKg7iGDNfjOFkyGfjmRLdEGUnQ3vn2P4fQgFM5zlWw=;
	b=fpsjbGND3RUmfg1Wk912v+tNs6Sy0mjb6f9doZWGe/u0+GyZHXOWnnMIyvLAqhIY
	Xklm/Vsnd4E7IUBk2LgZnbw406hLidOD9dlHDordA3hvRHv2qni9CVWjx4lkZKE9hVp
	vPKe0/SmouZfik/Od7fb9H1vvThMP4/uRXbp0b/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646263885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iWKg7iGDNfjOFkyGfjmRLdEGUnQ3vn2P4fQgFM5zlWw=;
	b=dgIpxrr2dnZQbp81ocI4q+lY/ZsiA03UGtOLDVMLjEm2pcfg6hPCCc5zJgl7oM+P
	xrljNv/MrWqnKOG9Ph7qnX5TU77c9+iP3YE/+fjMHVfx9bL1siayJxMTeG98HMvOmHu
	3tEwC+xYR4GZLRpFD2LrJ7ha+FCrx01YXOttRAV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4cf95c1f-52cf7b79-696a-4998-9e2b-dd28d7f708ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e60ad5765489f44c96a80ca1da84bada79a80c62fc137e579efe856da992c45c
Date: Wed, 2 Mar 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646263884
