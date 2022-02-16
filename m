Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552EC1B90
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 00:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644969684;
	h=To:Subject:From:Message-Id:Date;
	bh=1GDsEswQo+UaACNWf9JiQoWi2wJOMUNXhVUni15YU84=;
	b=XAfXmxq3+EU2+6Y4AF+2hFMqdGspl5TvazScoGu9vcjdR/+zo2A5JOL5QOM4gVZ2
	sSMjMuJtUZYbahB2zSx9aVDf++47/Fp/Au8Yst6FuLgZqNcRchBRSQABtr+kTAH5BDw
	qHBXJlNerNG1AyNyTmBfAMOLaTMy6dHx7U1kqWZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644969684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1GDsEswQo+UaACNWf9JiQoWi2wJOMUNXhVUni15YU84=;
	b=PkxpIZqL0GfNOub+Oc4ljxQRLBWLAGry72JU7eUZupR4iTvkDPnXYOwsfHaMGIuS
	VmqM7ZPtsmcI8kFKV9ZPcEHIOHSRTJ+CLA2dN7WdzoJH8h30CzEmsasEN+fyhRoPa3/
	8TpbV6tcUxAgHU3ZjFire71CcAkzZM1dvq5MXnH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017effd56f16-44ae80db-e80e-4186-9071-17da1089879b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 813cffc48e965c5b42378bc6028a7a35f2c268666aee9cb629c5d6cab1c55f5e
Date: Wed, 16 Feb 2022 00:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644969684
