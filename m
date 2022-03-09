Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4887E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646827585;
	h=To:Subject:From:Message-Id:Date;
	bh=Lx2rcFm45wQO0NAiYe1eIHeCmSObLeUEdP42qGoHpbc=;
	b=bq7OhW8Pupd82xuYhmsynRGA6Yqu64/KWBY1VibkDN5wNJf+vx1rUtISho7wny72
	FIXrMvBwbeq1ePyKuGucMbUeYJvk1lvjhBPE69DFDIBhOnJN+Y11gPYUOoxSag/osXP
	0mMWHlR9L1mJNz8EOyr3AyIv/H4Aa8177Z6wQBjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646827585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lx2rcFm45wQO0NAiYe1eIHeCmSObLeUEdP42qGoHpbc=;
	b=AwDIQGDaR4/gl0qT0GJrba7Jc5yTj6kaO0GZqJlgUpv5WEms1u1dXyhrM02X8Rik
	hKw/pRkTO5A9rS6UowcslHuxNH2I22Fwz9MLyCG9QdD+iMeudUW6oMlGLKgtIB/+5j+
	mqgAZde90apGwLsPZdpJ4gC5EbQEIhJMJB4NT0U0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e92bd10-87ee751e-6b06-4a34-a171-ca05eb5528ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0edbbd1f2da30f4413a1cb2e5a8040514e49cf8f46c56b8deb5bce7871186f4
Date: Wed, 9 Mar 2022 12:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646827584
