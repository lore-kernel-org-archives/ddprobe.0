Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AD27C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 06:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655273459;
	h=To:Subject:From:Message-Id:Date;
	bh=MZ38iBmVS4GYaIfgc+6FoUyCK16ULegA4RpDmEoJRtE=;
	b=IY2GnfUYS7ULqnlzS8OG1sYec04uxEUg/cIt4nIp6yrb5AZoMZPrs95KLETE/XnA
	yUIblbvrsTb22D3il5YELE60rwCtIPU0oJ6JZLDrlp7DSTE6gggqscMtjs7R+4R6jXy
	WQ7Ji0xXdHjIYWIo5L6mRRzOgDUTS2atryZELtJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655273459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MZ38iBmVS4GYaIfgc+6FoUyCK16ULegA4RpDmEoJRtE=;
	b=N7VB7hWx5VXlCodkm9TDbwjRsk3eXF4QtO7/VQNPB9PfoDK4g+hayIGJpDygw6bn
	kxDdL2Q+tbQfiPOMr99n5K2uN9ahubjcX+kelR4Oahtd8Uxdt4aBXVJJTGiPrZzzarN
	TEzcKNA9qryKbs45SpSIDxos8f6sRUvuwRjtidII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018165fc8e92-3a2e994e-ab61-4716-bac0-59376c21980f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5fb555e50c75d05162fadbb6c2dcb4e5fb6160ae0c91593c3144eca5c91f189
Date: Wed, 15 Jun 2022 06:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655273459
