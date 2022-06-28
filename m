Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8593C05
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656431212;
	h=To:Subject:From:Message-Id:Date;
	bh=mA0ZxtUwUQpm92deQEbX/HP8+RfwRmaBhKGcolvj7Ao=;
	b=AEO6A0tPeEILRCdQQbaYzM/YOZIwM0afM4bkR1a5ZUscdD/Kb/wmDEx7oSI9RwyY
	R48Q/+TVZH51kTvK9rt/xiOPGBGIjGxutbh1fQ+wHl8DJCpb2qLXqo2YCqyVDZ2kjLD
	NWLQ8OmKQOFO50wVHHcgp15Fb/jAF6a2R64FfBaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656431212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mA0ZxtUwUQpm92deQEbX/HP8+RfwRmaBhKGcolvj7Ao=;
	b=JcTGNR6qjXLN3XDpq5E4M03AyLwzFxF2lFKGciy/2t7tgiAtmwBZ7JOsAsYomGgY
	X6gJCXPmiD3TxgmNAnj39SCEdjTQE/gDEkTF4JMmyNhOyJVDrE+IanXdrBzf5O6Nd94
	seb7LjtahFMVZSr6QjhDYP0zD17jEFJwOHkxC9D0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aafe775b-67d0296c-8313-4c22-a01a-764751e2799a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62761fb46c80a3b52342b6f523d75eb739032d8f83c7b639f0ee8f308860e135
Date: Tue, 28 Jun 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656431212
