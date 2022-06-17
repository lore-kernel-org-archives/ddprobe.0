Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B74B7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 07:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655449559;
	h=To:Subject:From:Message-Id:Date;
	bh=ld19+4+47nLZVrzub2mLgk0S6IjqAYBhVUJaJ49dYco=;
	b=Bla1szxgO0J0ncX6VVdmRhmldBoRIJG0dMNt93mH8ZLBPSqcHH0WHSO6+8aZ/1h8
	bpZaASCUS5BzXPUfbRI4Jb76VrCRONNf5pW/vSGKXU3M3dz/lgDOStWzk51CGh+HAM3
	Cs7aaRcxCXMLX1RagndNkIRuXoesKd9eDHisnI8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655449559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ld19+4+47nLZVrzub2mLgk0S6IjqAYBhVUJaJ49dYco=;
	b=XLFoBnD7yX90MdBiHNDd9QzZMXMAMCwcsW9WsGV2doFVYJb6POVqah2mZ3Txo+WP
	xUal5fjlQi6r9+TnjnZMDIBe1TbwZjlOm3olyvmjrIFusTip80AggkbJ1joOsdvekQc
	0O4QXYkifJfmakXazu/tBu5u86dafrhAcrETUFA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181707ba0cf-b1eb1fbc-54fa-48de-9b86-0c27182c5ecd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce1a87874371d04f6ab5579d236845b08283507b75391e6930c441445f5577c9
Date: Fri, 17 Jun 2022 07:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655449559
