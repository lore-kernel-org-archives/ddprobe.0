Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5879A1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644981084;
	h=To:Subject:From:Message-Id:Date;
	bh=8uqIwxruwhf7kDCfxVXiZglGpaTZ68AtV3qv5Ymh6Rk=;
	b=aSzaMhk18kSAp4ZDbYQ6tj5kCmIPLm4iYyCkj2Di+SlWtaNk41OAxzlvS+cWe9ok
	PMgjItQMgGsI/1Kox2ej55a6Ckyq6sfZ9EDhF846RbUBn10vor58Md1QXQkbu6XEuTg
	MXkxc1Ykci7Gcx9SYoWMfoubfnt7sjSrxqFHwwa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644981084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8uqIwxruwhf7kDCfxVXiZglGpaTZ68AtV3qv5Ymh6Rk=;
	b=lgJXmUyhOkPdLK1aWX0sZaiVSq0meKK3lff+v/rhXHiY/WI6Jix7EaVZckibi0Hw
	JezEFQNlAiZKvrji2cgP4GXpDMqXa7zL9dx/X38JmuVyhTAFTWyG7OL/CqaA81JeR3t
	f1aEwTEh5eKW9lLAl4wKt2Exm4qEfiIkDp9XQsU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00836249-3ed33d38-47e1-4419-8e6c-3ca8185f9087-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 168cb28c861cca3dceac7063c0e7c14ddcd0c62f1ff771c54d3e804bf7e7e776
Date: Wed, 16 Feb 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644981084
