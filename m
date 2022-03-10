Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9629F7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646905284;
	h=To:Subject:From:Message-Id:Date;
	bh=nfw9XNWz0wQELtEMEg2Wlyzgr1nHbYG0YvlwaZeg900=;
	b=Oxl3FY6bWXGlShfLyUWsQAmKquOheL2m1+GboTKUGnPj9Z91/vQs233ttWK7zXhP
	+GVPB8Puzd/41sF7yuiqLflBUO2Nuo/r6/zojrbZ1Wb0CQAcrO+7VjZBHfxMu2wzuhA
	LJ0/Lti0ZiiCXLHFOMOEK/9pwVFQZUAf0LtXoSv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646905284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nfw9XNWz0wQELtEMEg2Wlyzgr1nHbYG0YvlwaZeg900=;
	b=Dr7J70SlZRSqV4+OuE6ApIp4pDhP1jm5Ur0VtCDVz5X3Q2Ni5uz29REATrfLqWM0
	4LVHqJ0I4LkFo41JeTDwqMJL4DeauqJqtkwFrI+/JmKtVAmNGf40T3Re8Y9w7Z/ebLt
	KSfoAwrmv2+Gn+//mpnKQ0XDenb/0eKM8a565DCo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73345892-d908d508-79e2-4692-90b8-1a2804a5b51e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7b2aa688cd445f3d11a3cca5025037e6926b7eca812e8a6a0beabd3010886ed
Date: Thu, 10 Mar 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646905284
