Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C417A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658831212;
	h=To:Subject:From:Message-Id:Date;
	bh=S2wx15MadvYgtL+93VVwG8XVvetC172wknUy3+3XvxY=;
	b=i97GQqp89ayIVHClOZXtUCsl9a/L50rWZp1WGxNzKs605V1TGWw0pk4G4fsO8e63
	xq8ffvs9oia6cRWd8EnQVcLijbMy1IpgQy5rPa5zOn8LCJ4qYGCA4xQaRtpRP/oezbU
	EynmHnzcXjrpmhLW8ZdDLJutDdtmmnlJsuXyzARA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658831212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S2wx15MadvYgtL+93VVwG8XVvetC172wknUy3+3XvxY=;
	b=Pfn4xvLD4p7J7nt6ryx5cs+QjZSRW+Iaag4zdJjzodxxH8ErnCLJEj8g1bcQhy07
	eh/7JoeJwLED05Wpi1UgmfzG4bC3mdqrZtmmPotOycSqFttCB2MxzICCe0soHpXExvM
	+qnIBGTXzqv7c5KNvoJ4nvQQ+I27TEEwSkoHCE+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a0b8f47-7b24a7e9-0e3d-400e-bf67-22a74bc72872-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78472438dadc828b96749b546a10d0d29c946070388980e41b5b290938246aa1
Date: Tue, 26 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658831212
