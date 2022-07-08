Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6AB3D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657312612;
	h=To:Subject:From:Message-Id:Date;
	bh=GLP+AnkkC2i2zZrxHtjM7L6W9YqNwf+LLd/LFzY5+/8=;
	b=iOD3OeRS8bG4jNqe/Kxz2Dn30l1Gu193taOETAQCY1lzWqNXCi+MASmBhjFz6bgc
	9YKuVagYvMALrsK3PjTflL3r6k6G9pit1WO/aSnUlPmQ6DO/lwaV/Cj6dah7gcOeeJx
	DyX9NcuHonvhF3dKDFb0YaJ+DoylMve1uQQaAHa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657312612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GLP+AnkkC2i2zZrxHtjM7L6W9YqNwf+LLd/LFzY5+/8=;
	b=Ji7ozLFl58YC0kMHSqthC2sX2tjhwQft2ygXzZVbsmQDXrrzlr+ldtuc5Vt8lryr
	7dwFiOa0xd6i4e/ckb4zOo9VpH8ST4bo90H1g2ipGfH6JePaLIrYmhuEMIa6FMzC8Tj
	t/3ki57bbofyyrlR8lD7nMNq9JJSCkNjJYqwQLlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df878fc2-8f54b947-b345-4ab8-ae26-e9489d1083be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5c4e47835a2325392d09b93c50046a35b72bafd061e5be3a0067faf63f6bde1
Date: Fri, 8 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657312612
