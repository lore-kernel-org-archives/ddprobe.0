Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772CC4C8F
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659125452;
	h=To:Subject:From:Message-Id:Date;
	bh=qttvwjT1uQgKawvCLG9oau6sWBT/kRYi22sA8ysNbJA=;
	b=GaI+qR9NWwE963RMlwDSn4Mv7BKUC0NZxDrIZhXZhl3Vm2ZkCx2JRmVDGsMRlKpe
	ehoTYPm+cwr8x4eF0n+k8E3GGANk0MkrARnfdO9NiIAY3AxOiSVkrKPV2/IzuGohJks
	eTaAs7ft7TJqwHy4YP1trlL5MPxmjRUK3O9h1aS4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659125452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qttvwjT1uQgKawvCLG9oau6sWBT/kRYi22sA8ysNbJA=;
	b=Yo3fuu8Fb9MvwNuE6waHEDwLHBQoY2zlamNOTCBfBMt6V38BpMp14VwEs6ItwW/2
	K2Gs7K1DzoZmDSt10+COas21iYzHNrMngHlaC/KCGKLf7MD9cqQjGeFjsDpblKi2kUG
	ZWXFJckajL8oke/tR48eMzeZjBwUhlYzhOlpmAis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b954f13-086297c3-111b-42da-93a5-3e3505b790ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9cd584a81682433ccdb1950c5995c91ef4145a324552ce342a632d1686e7042
Date: Fri, 29 Jul 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659125452
