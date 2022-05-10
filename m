Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6021FA0
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 01:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652146379;
	h=To:Subject:From:Message-Id:Date;
	bh=O6B3NiBymmT6Rvchljpv01beDhJyAciHGjNB+SW40eY=;
	b=JZIszeMn1Gi+Fm4h9AvFabTPgNFkJ3jJxJrWP+/0ntp0pLRdEGH/U2d6SLPOJRjX
	58zaZcbdY8oxWRG7e+gULvA0EnFKdWSwIGAF/c/2GNmXmniu8y+ABbw/9jPK1DONZJA
	jqAP+Wz9rkfl5Xja0EWHDA6AA3oJPcxMWVL9UdeM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652146379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O6B3NiBymmT6Rvchljpv01beDhJyAciHGjNB+SW40eY=;
	b=XnI8IItMWDBQPtIQRzzYfWGG36VSsbNIdjCqICO84JH5/IXiBNqC4sSY5O6QynUZ
	fdVlZm9Wxg0ArPXz4+5ThxLpOMuO2p790c9G/nXsX52PUpW0j1H8BS1jCz/Kkjud6Nk
	tun+NSP9p/M4g7dJZpPXoP+xahM7d6/lf3rBCscE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ab991a46-e412e162-8ea2-4323-b546-faff0db56222-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c703dee3e939b0cfe4b3599ae3bc4dadeda7df91b799d4237aa26c2fb2593f77
Date: Tue, 10 May 2022 01:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652146379
