Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D765EC8
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645385484;
	h=To:Subject:From:Message-Id:Date;
	bh=aubzlLOVlrfz7vfJ1T67L3xKOSnozoejy7GW5XWi8Hc=;
	b=NsvoB+ltryWQ1p6KZZG69Cq11Ci6gkRWhmovyAK8Bwvn88i8PxHOV6z/Gxfevd1v
	OlPlRa2A9M9vLFGRFs1y1zCCXu7m6LXY/t6+3LsO+S/kpTbBF+IE71yoGox2OE5gj7M
	SXEc9f5SHTd7jBcr+WaRjLmSKQPPXzTtuyfN3adM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645385484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aubzlLOVlrfz7vfJ1T67L3xKOSnozoejy7GW5XWi8Hc=;
	b=V5A8RyHAjFCmZVgrSx0DI2R03TeYXHHisVttS0aplNExcP30/lzdxSK6V93YUkZb
	iG2n1zMLSsQo5MJEDNq+pwkcSuSeo8xA1dxCFVTP6iDur6GXlEipM+PeDK8HlU0KpCu
	sSqV29Tfsx0F7eC+u1Kris6uT48ZnK+kllWc3IBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f189e09dc-5651eb06-390c-42af-97a7-8bbb43f21544-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5de85d9ad5757479e8fe99402407dcadbefb9f752cd0b8b820fb6a49913a8763
Date: Sun, 20 Feb 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645385484
