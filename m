Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4104369
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646729785;
	h=To:Subject:From:Message-Id:Date;
	bh=zNJhrvn/zVHVH6s4wWsZg+uQWoxOE6h08A9SFvZ6gGI=;
	b=YqVSkXDpxqPnIgl2rp5oiteT9/hqKmLs5X93TzvtenJ9/Ath/KYt+q1+DjNpguav
	IdYnneVnWcdRqaiPtfI2q3qThOWoioHGDckxWLMbe86dTob33gDWdyzG8cT0Jmod7al
	rqgKtyuD7eRYPoO5eVai9sualRNE0TeA2O2Z2/Yc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646729785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zNJhrvn/zVHVH6s4wWsZg+uQWoxOE6h08A9SFvZ6gGI=;
	b=Yzn+gZS7VnWOBigAxOsZafjlCvZ0JiiSOmOxbj+6PQ/7eWY+6HDD7YmYWMYdmkGW
	4eWLPvV6cLd68hUEIx8qFRlPtfkdE+0C+ZuhKF9GHXryJIzHvKVCsaOopmwcGWV0r2Z
	NgngneXncSsowz1JNcCd6WZgPJZQcsVzJ1fJrEak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68be6dba-40276b9b-13ed-472f-acf2-0a96094aec4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa2e745c075cba26ee95ffec546677c02d95638c05d02f6dce634551b84fd171
Date: Tue, 8 Mar 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646729784
