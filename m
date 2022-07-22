Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FCA2FB3
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658488012;
	h=To:Subject:From:Message-Id:Date;
	bh=10W5eIA+dbkVolVS5VeLdjslDaD9KOZVKFFxmNq9v9Q=;
	b=CA3NMOYUSBcesmb2r3yr1nZucwngRtfltVByAuCFY5i/LFARqkdTIPI4fAniW6oU
	Ok8Gv7Y6HI4qW09QHImADGa233EW1dep6c8+AW0l9Qg2B1xqjaUOhRUneaTvXYJ+pQ7
	uEBSyXVn58w25N3AOoVemDUwJNCeY0QkK6JZbCt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658488012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=10W5eIA+dbkVolVS5VeLdjslDaD9KOZVKFFxmNq9v9Q=;
	b=Bs8zS+HLyPONuQRfWx/3zmQ/zbXHwP+EDZ0RPdLhZN3Ujg05bRkNZzO37nNjuyeX
	6RSz8OLvYAdy0i/tEJs5APLSZIvTDZtckvcjQDDETgB0a7AG02qxHmnTE50+iI4CQ9F
	XASP5eFY7koyZjOo0y3CJHjAc3Xv9DZHMnWpaB2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822596be11-e5a7152b-ebf3-4b9e-b65f-bf7f4a67c620-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d692b3a627ebf30c2642b009f6357db26d756679e3782406bc201fa9a1d97c7
Date: Fri, 22 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658488012
