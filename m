Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95722C6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645623684;
	h=To:Subject:From:Message-Id:Date;
	bh=mOV7ayl5q/cYJFNOm3E8Y0XCASQRsdDWICI6i+msh7c=;
	b=mGqRiRmxNPpLxFui3YSC4b2uPKKk2kN6S/E+rE/KfWBAcm+MRz114KimLBnoCFmh
	sWj+rFQ1VK49zD1M3pXc5CdFBNpLQiXf5aA2uO+IeiXrqnLExpeEBJII3dolCyf9TbD
	P4B0OIJRbkEiLMdgi39eVinga4Ptzf0W49A/siBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645623684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mOV7ayl5q/cYJFNOm3E8Y0XCASQRsdDWICI6i+msh7c=;
	b=EHodcAAUFiNKH6NpleUM+Y1t35UYkanP+aRX1Zp6WnJra4iz87fhdPvxeVh8+G6W
	cYJiVpUL8h2bkTcQuawgAGw41iQcE10s8LSgDQqTSZZ4PiTVCyZGDl6ET3RGis1ZkD8
	muRCmTIN5YxQ5TOZR+4eOvps4coHPa8hFi4+G3gE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26d0aeaa-2cc06fea-ea37-40d1-b91d-b103473d9bc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6655c063f126ea2a73ce86c107f500f9db6bdfe5723fc54bad8fde090fd1d073
Date: Wed, 23 Feb 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645623684
