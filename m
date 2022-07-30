Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C991FB1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659153652;
	h=To:Subject:From:Message-Id:Date;
	bh=3/j2LpyidBF3dBU3+TpoHrX3s/qm0BB7RhUbFRMtvLc=;
	b=HT6JU4VxB6x3avDXv1W9PRN3KKqUJmZ3FBAAg4L5l2p9fF51xRaBBm81dFRKdNiv
	5/c6j2Yr2CMDdJZpA7ZK+crsCXqsM9s61ezS3kruQFj18A0OMtM/p4nj223f/R7Tw9I
	xPbN49/yPyXMKck1ItKir0p3H9G1+IDvRWDj26Gc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659153652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3/j2LpyidBF3dBU3+TpoHrX3s/qm0BB7RhUbFRMtvLc=;
	b=II6dzgwqGQJf6AMm+YkO/ooZ0IFazNARnPu7Bl9EcX3X9UopXFNDcKkD8m8bRNPb
	BPC1Y4uaO/bfkmpnmyt45NZDdg3A4tpz14Uu9nhugN46wxEti4avQYJO0pOI4ZGfqgT
	0XNsg2El6y+/eSYGtdirjmi9LYHP8STgY6rBki8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824d439b5a-a3dbefe4-0ee8-44c7-99ba-ba22d6341d10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e7ed3e0f25e85797209522e5aea25c25407c7ca43c31b7c2b3e5d7cc4fce38c
Date: Sat, 30 Jul 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659153652
