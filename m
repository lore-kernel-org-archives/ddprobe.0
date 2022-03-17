Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757434AA5
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647550584;
	h=To:Subject:From:Message-Id:Date;
	bh=D1QqoiyNTonrhDKAGjsEIN011MWxpkM5xU/3PN1o31I=;
	b=gYxsyXoizAvFibG8J2TOTxq7/U7nQBDpNOSyCXP3CGtXgXK8AsNszEvZFM6JcRyz
	rWXGKz8tXKAMr4rSYGgUTpv6pLllRTiHnSVhgA3/eRvutDshVj5zp4c8gr8a1ibjcUN
	eI/h80FfJUtXlJ2y1F0ic+dRstn8SeYKkvDihK90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647550584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D1QqoiyNTonrhDKAGjsEIN011MWxpkM5xU/3PN1o31I=;
	b=aaWl1pEHJWl6GUKPnwccZ1CImh5b/TI5l+uLdkv0qJ0XzFLIu0Hv/Yd0BF/brglj
	rY15ppnmgwwVzHmSnYXXXXv0DyUQeIMW19BZA6Q2CciHRIv4gC84gfV3jaJoEmDO2hj
	jo+ouVUvIlRfoxXKFml/AI3jJ1slWY+2Ymfg4iTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99aad7a2-2e22301b-9a6a-4894-9690-14f4a02d1861-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f3bce2098eb32896270c0bc8a09a90655d0b3ed348f7fabe613ef4da7355d6a
Date: Thu, 17 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647550584
