Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824255C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659298252;
	h=To:Subject:From:Message-Id:Date;
	bh=pwsP7gRRelITd0CDcNOwiWBFmlZ/yS6e8hunDXaRdOk=;
	b=XVT1mBZMfwQlQpr5/053gimr57zkZdNJppZ8cmL0m0KJyKySu0cWK5qFxna+7k9y
	lU/gGZU6YucGJuLS/oyTleyfubjkWW24+4liTgXP9reFPbvOVLTzN6FwVg+j0um1Y7q
	EkwEa7UaCZ2bvn5q9VLOdk5izyHDdNkLeXf2UvXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659298252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pwsP7gRRelITd0CDcNOwiWBFmlZ/yS6e8hunDXaRdOk=;
	b=FfBkzVE39l5N2mecILh3au0lJIFF6ccpWwbzzgiora59uuAWFAsypcS/Rowm6JI8
	n2LyzSZ5NrFc2tWokSS7jnYOT4yeWN6NoTWycRbtDzmeaLfKe/IiPyUxjb8pUHzt8mP
	Op9mK7e7R8RYflrocCqRmq39fKF2nWMJpXl97dl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255e2071b-4cc4d185-39e3-41d6-9de3-25d11ea9f789-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 315d3a2a00a3919e003c8bffd91e412417e1348ed68b3d05bd5c1dfb73af9706
Date: Sun, 31 Jul 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659298252
