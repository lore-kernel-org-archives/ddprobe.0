Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19BF36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647048685;
	h=To:Subject:From:Message-Id:Date;
	bh=ZS4AZ1nvuiVLs8OrRKizH4K4VngqYMp7gu6drqCA/gE=;
	b=Zf4U/b1Ou82O9SEre0jxfDcmSWDCeOaI8f6uU97wV9hlc3gKFayJfx9ImDoXVQEJ
	cky+VPOfXrt42OLRn8qhceh4We2+JFE2SkbJQEMLX/ryGZnVqX/gxTmUkd/WcUDs8JU
	JItQgIymNq8lqxMm26lOTMG/wji0gwH7y2TPn3SE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647048685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZS4AZ1nvuiVLs8OrRKizH4K4VngqYMp7gu6drqCA/gE=;
	b=Nqnncq1jR7dk4EYXQFXEWtbYjzY3XmOduCHbC//yrYvRMGVLgYT562KTSiJXUykn
	/rRsWTQ/YMdRInoHB9Ah9g1CkU4rUn3jnwLGC3F0thdJuB2RZy075XVaHkIksfFqPtt
	RAxhAplk6k9twULmCxQx5HUC0G5Mgp0p+7jj1Tus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7bc074e4-d54e6d3a-918d-4a85-ac90-791f34ab8b8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 588f421b0328a7b62c9a326d7805e5612c6c9306b6723d16e4b2febbe578b137
Date: Sat, 12 Mar 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647048684
