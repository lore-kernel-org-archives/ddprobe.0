Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3531851
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 05:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653714899;
	h=To:Subject:From:Message-Id:Date;
	bh=kdX5OwVh/4lhDW0OTOF052y/WSZ/4r8qmMuuYublPBA=;
	b=BEEHfZnpeKBLhViLQNUFSCu0lfJRcX2vbbF9NSqTZZa1UxU/lKOzM/TEEYD4pbdQ
	GfKQ4lyo6rVsQ5lIar1rOsbb4q81CFCdWYa/Bbcq+Z1Pa51b62n9BRZlHYXe8bnZM3X
	iU10ymA25JftHBCsnr93JmJs6xPFbkdr8Vj6/kj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653714899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kdX5OwVh/4lhDW0OTOF052y/WSZ/4r8qmMuuYublPBA=;
	b=LWVRwiy2ObN9u26lf86ejh+/7vicn7Wk0z2f8e8UMDT33mWGz4UWlgh7UOTTH7jl
	YwGh2d9adntJ8Z/Lqr+TKXfGlDZruSCyNSYEnDak5E/77gHW8QjYx6SA3k0nlNMdYT8
	rLOYObxp1QZSBEdUFGQTZXofDVplyOGR8kfg10rM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810916d17c-d33c8305-3d4f-40b7-bbbd-7951e3aec8f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 057d9056ccbbea815204dc4b14f2f5e5996853d5b1783e6bd148928436d9a313
Date: Sat, 28 May 2022 05:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653714899
