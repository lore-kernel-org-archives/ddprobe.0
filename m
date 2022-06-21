Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA11EC1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655810999;
	h=To:Subject:From:Message-Id:Date;
	bh=19qAfyhP/zXDeYgSCYDa/zRkXT+o9zQQ8swcVed+vVU=;
	b=Fb55Oeqq9bNa9eGAWgKFOiDUGE59NfrLA666WRq6Dtxd11hRh4szmz2a3M6PiarR
	bEIFkfrcIN4jomNO8O2/t8ePDQetblMp9L5+3vgCq1vyHPm0jBVHy/5chhlKftqU7pf
	x35astqQ7rjvaM63y6l4vNmFwDbuuVgeQelI4rw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655810999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=19qAfyhP/zXDeYgSCYDa/zRkXT+o9zQQ8swcVed+vVU=;
	b=L0PWW9SOAUgwVMY+4ctFLIoj67fKDGInBW28JyS2WvkW8SlopL2tskVxHwiI36u8
	kELdwjOHJu5458pBESZ6uS2OwNp65ljciUOX3P4b/0jIyBXzpttxXrv6Lc4Hlf1r3Io
	IRgZk0IFu3PPihelzAqvP6a5tp9yCxoiPqbcxNeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818606c3bc-088f58d6-cd87-4244-875f-e0dd2acd2620-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdce8bc97cc7b935d7236f70212232f3dfebce8e32305bd99f5c71cb0543b730
Date: Tue, 21 Jun 2022 11:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655810999
