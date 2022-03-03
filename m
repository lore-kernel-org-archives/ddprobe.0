Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE1074281
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646343685;
	h=To:Subject:From:Message-Id:Date;
	bh=RSTvtXQ5G7ACv5n5eKyKCiHPPD7SJiz4uRGZvvRb/dg=;
	b=Cw+YHxF7u0ohUazN+bDRFqC2NgQU6A3Fe3uEOqT/DGUTg6m7CD1+CQLA0sOgk+sb
	eFrfwkZmDLqkEQSg/bp7EGoE27sH8a76b66fk9VZo9X1hxAS0g1H53tsl0nL8aByIGw
	iOT3LoQdIE8otDeDOA1ENHkmef01MBtV2GD5MR1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646343685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RSTvtXQ5G7ACv5n5eKyKCiHPPD7SJiz4uRGZvvRb/dg=;
	b=WKfBm73/U/7XLCFcWmUowQdEc2x39vN5bKD1J8ft+SqIN0HS3ExKm6RY/EsKaDhr
	erQuZA5BnHDED5x4USK270nwChqW1vuZflExgmLl7ybaivBNgV7fL5mfT/PCe7gbGRE
	8ueIKqQGXHIQ6MsJZmh2zGBvUMYDRXeXb1bpMi3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f51bb02d6-6ab21371-b8d5-40a5-aaa6-f210ebf2e191-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 494d660900741dbf8f31e661381ec1fe6f9155f3f4aa01857564b93cf44f8358
Date: Thu, 3 Mar 2022 21:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646343684
