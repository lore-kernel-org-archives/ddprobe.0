Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E734B20F7
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 05:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653198659;
	h=To:Subject:From:Message-Id:Date;
	bh=oXQzC1iM1MrvbGByh0shsiG9bD8Lr9AjEV0RbAT9/bg=;
	b=IjQo0/RtahhbOSU8h/2AI3ISYR/60X7+hEqUe68EvBWTuZkjEaGHVUm+4orHt436
	O8RPPzZflT5+/HWba/VDBgQzBsHhLBlK+hHMdXrJwOrm+YFd24gRJPdv7qasGzyZonD
	YPrF3yuS97OKclX3JThmgZ1fgaQEC9aE5lqPjiEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653198659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oXQzC1iM1MrvbGByh0shsiG9bD8Lr9AjEV0RbAT9/bg=;
	b=hbWjlAbsaAcyk72hDnHquTKw27gbSYbTwy/rw2yoFcLV7VoWH0QQjt/8+OzyTvVS
	dhJubPj8oomocFdvgfbB9G+8DLsX6sTsRtTDVZ26nEs8KPfZDYN5xEeb1YjesxChdh3
	0rayUANd45ChQFOTlcWb0sbGBgJZhquqnJk0/bG4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ea519eb4-e35ab73e-a41a-47a2-be2d-b063390ada4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6520a5eb956a9319d0d6a68be09821c575648dda1654dd4033afbdad9e4bde3e
Date: Sun, 22 May 2022 05:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653198659
