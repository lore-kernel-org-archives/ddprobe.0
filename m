Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895A37A
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645717285;
	h=To:Subject:From:Message-Id:Date;
	bh=jl5UWT/t/P0tCjYPupQGubWOFXgH/iUZClEE9CxlNrk=;
	b=iFI3nIQNF8/IOKEUO0Pksux7Ttb1viSHgdg9pt0UoVkyOjHmxVhooDg4faSZ2GYb
	ztjEh10eRB4dz7Y69T4gl1PekGP9vPZH/mhJeIJX2OmD0Of877jB81R8ebqUCbcMSU8
	ULxERsvpvSWSUTxq9hJYajyXe/xehtIhZ3608kMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645717285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jl5UWT/t/P0tCjYPupQGubWOFXgH/iUZClEE9CxlNrk=;
	b=WLFwOKlzQ9jcA6Bh89Z2Q8xorqWsUw6eiHAK3sV9vzSDp3iUi/5Qfd3DXZYa+hxm
	XbaQ7NEXS/lKJC8qilIV2qiGMZ8RNpTM16VD+I/X8eth7E2phRcTJcySCpZSm6Dkhg9
	yAGM8Pte1ojVlozb5eocJbs1uPANZcbTHh4KFGwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2c64e7c5-ba6411cf-e9fe-49aa-9f4e-6088e8fba2b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 569c15ba50cf8c6ab1deadea61dbf8df6f2a64f119be62a78d0f2de50159185f
Date: Thu, 24 Feb 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645717284
