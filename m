Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF123234
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 22:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649976778;
	h=To:Subject:From:Message-Id:Date;
	bh=34v7jy4nAKlVVufQz5lo45y1fN/qqPnuHq8rVvBWznw=;
	b=NDxjz8CdEw2ingP8dQGKhSx1yRXvAnQ3NwXnYMj88oyHO1JjHni4cLtFgw3prJL7
	fuo/NuMRwSHrKzneQXyUcxotLHPlj2n4swhjFdy6FwXA45PrUkRQ1+mMsBX5M9xLkED
	Xa5jF31NSIwbtutji+3ruwLdka4Wj+c5H+KcUgFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649976778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34v7jy4nAKlVVufQz5lo45y1fN/qqPnuHq8rVvBWznw=;
	b=k4rMdIUsdHLTdl+3epMYeoUsREZ9hVr7Sp5z6bbiQajIk7utTG5aw+iwDk3ovGjp
	ZSDiOAJX7xNnmBucAZB3Q05/bZmqTX2ZZHmwnPVwFn5PJAp87oPQJVtx6pRYvTHeBWz
	613gFxpb3eW3vGVv3mgIwpHKoAwuC2IiOF/Wolxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802a479e53-2241557c-a944-4b78-83a9-9030c3429c56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 355c50739898136d53e2b28b41be0367323b848d46b7d0883c200dee8125ec2c
Date: Thu, 14 Apr 2022 22:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649976778
