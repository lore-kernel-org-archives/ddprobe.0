Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A7E07F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659605452;
	h=To:Subject:From:Message-Id:Date;
	bh=58FqB3viyJeKKPNmUsQWvhMXaoeK+LGdarVXj+zGxTc=;
	b=KxOJ3Cr9ByKgmSbpXtauiN3FI1e+2RrDvBFxnylFwl3ld2QFJmR+/rGX1MVUAGY3
	+gWwYEgLiRAZRkeKN2wx4QPoMDKQAJZknx1ru7UO7qeNkuW9NtaTUGlv2kBLGHlp8RK
	ktIf6n+FiYhj4hu6CN3fIbQweceyCmki84aFap3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659605452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=58FqB3viyJeKKPNmUsQWvhMXaoeK+LGdarVXj+zGxTc=;
	b=Ru/ifk/Te1jG0MFks98hBbzXvpK5oFuchk24xqpbGwrbN6vXNZ2/LKQ8BqrLzof+
	32CvjctQuqA0ez1ibB0ek5xzNTJF+c8dhFxLL0Zlrfe45nXesN6dZeMXPJgsCKQZJv3
	saO3R1oA9Y9dJMKC9C9QR9nB2A9VWlyb3N1rGUpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268318716-bcc60fb9-3237-4671-b436-0b90c0bc61ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8973458f4ede1405582f2ee35a832f1f5dc72150d40a1e1e22e412d513ac0680
Date: Thu, 4 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659605452
