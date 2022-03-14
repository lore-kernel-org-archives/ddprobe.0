Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EE26AB3
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647288685;
	h=To:Subject:From:Message-Id:Date;
	bh=V0FaVIs28VtOg2hPvn3941q1qyZOGcy2qWDsS5u7Vpg=;
	b=dzRsPh9O4qiNVFDHPibe4oT5zJx21hZiRaQ1G0yLiud/dTOTBJ4i1s1SfR11RjDI
	flBYBTWqA3nbLZa/TTjlKXo1HFlWgEVTybz++E/hxmRHKW90IANB1n3VNYb+RRKjo9o
	mHk/02i9a+n8z7qOjMZUFyVDJYoM8gklxDsWKgzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647288685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V0FaVIs28VtOg2hPvn3941q1qyZOGcy2qWDsS5u7Vpg=;
	b=Nz7AyZDuW9E6OIlPZAGuH8z2bMa7BDuMzHW8V2k7aB4VBn4ZXRdgQndSMsTA2VKH
	SFoFP1fNcc2TJavuGXE+o414aOX3AC8swFcQtueupSIg3avFS7mU73Q5wjaaGnYf1lW
	uofPZ8jrJwu7LgSoSWHC0WFGLRk5oRMTekcXDPRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a0e90d5-12174e96-98e0-4dc3-b169-d2043e58e85f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bab9b8502432345dd78f6023f77d29a440d6274170defbf52eeda1515b986524
Date: Mon, 14 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647288684
