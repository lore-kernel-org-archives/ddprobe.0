Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54D82566
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 12:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651666618;
	h=To:Subject:From:Message-Id:Date;
	bh=SihYiJCX1g1TCcLyUOxsklP3M11LmPJ85n63kpi/+xA=;
	b=AgO9zClPMaU3VHTE9GWXAJ1rWHsDcxAZMtRvE6KwmZ3l/ux/5Dccflplo7vNYbDh
	Vikoa4a/OuMyhzqObzx42K8+KcTEDnJCxaFk1CHj0c5D9h3BrK19SuXMlaOif2/Lo+y
	NjoYUaHwP4/lqI2ORcey7j2JvQUCOq7Rl56LsyQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651666618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SihYiJCX1g1TCcLyUOxsklP3M11LmPJ85n63kpi/+xA=;
	b=joUb+poj2BIGEWTwk4GmwPVNn263fLfEerzIfm0k7i3wPi8r13YG6tehlwZvs7jW
	0DNDLcF6ch3s6Smx2mLbukKZnieBmt0f6jsc2j49uGNYMihefMdnXI/X7gsio5rcfj8
	t6uJWOSernL0NJ98kVflMm3cIAqgxKKJjnWEY99w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808f008786-a6e3d09b-b1bc-450a-a069-beeca9d15adc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf65d346419ba37370607bc3bd0ae2d1e2358bef322987a1f257ed56fad9f3c2
Date: Wed, 4 May 2022 12:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651666618
