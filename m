Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227C57A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 18:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646504785;
	h=To:Subject:From:Message-Id:Date;
	bh=gzjihQ6hOqQhILKFBT+zrNSNZmfMrDg4PjnwZoQWscU=;
	b=aKLNvHjEF1XW5AOfxHqa1I8qXb7etIE0+gAtddxt/3gvixfSvt8/0rukGYa1/EJV
	Em/bl5VlPu034BqQdD3lyfNwZz+30aRwGratI+RG94xWVjcM433lSBrHp+ZdTmQHxb0
	qbQO1CYJikvDa6k5zQTzdwGaQ1QESA9wgk7a+GnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646504785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gzjihQ6hOqQhILKFBT+zrNSNZmfMrDg4PjnwZoQWscU=;
	b=kNry9yhEoDGYhgmUTERuDRx/bhtcsWGeBnj2YuitkAuhRhmih7MlJb1aaAgtm+r3
	MHjxIA+RcvtQyWxqK6YO6HlS4CcQhILC6D38F0ya2ULXWWTishBs55YqkzwsYi96N+Y
	nXKTBPrZk3Maf69kIx1Wc0TiPGgDLAA/pc9gSMtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b5533bb-194c2495-ae9b-44b8-a3bd-3b36ceae470b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e2b9fe64b73f0a1003dc2f9f0585bcc73a9bbea99c03b2626407aa283451788
Date: Sat, 5 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646504784
