Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561B15391
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660663852;
	h=To:Subject:From:Message-Id:Date;
	bh=FS3DY6Wt6OyoVO6nWPG2V7wGhnFpHBrYBnnAZq4NWV8=;
	b=W6Bnw2TJegN8hfty8O7DqErnA+b/OzMZ4KXeqTb1EDOCsrrxGi9jRfgjyG6/qsun
	eo5i7XJmU817vdWurcdETQsdUpXWNCiDDtyTUAy3YLGYFPkwDrXC7cSKJ+kW0R/G3V/
	4+6t0EhuTcMcLuq1F+XygxLG0tO2O5Wn4XhmzqiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660663852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FS3DY6Wt6OyoVO6nWPG2V7wGhnFpHBrYBnnAZq4NWV8=;
	b=NunzEqxEtJukg6CFSjcEyB44kGdcEhrHweGA/3XR9dDyx6YJiLGbpJgqIKrzS/xK
	TtCMCH3SPpo9iL01/EsoRbnJ5G17YmMyRfLFLcdYitcTOBLourktfoR3m1H3OBqzpM5
	5P0scOET2+z0bg7Kf6UVH+4dmwrZzNeanicetUI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7476e05-b0cf52be-72ed-4b7b-81c3-793316ffa62e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 819ef9b71f471db303be0edd8595aa3c5f0f62ef69e01dba3dca0bbc346c9c0b
Date: Tue, 16 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660663852
