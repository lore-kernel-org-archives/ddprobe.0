Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147C37B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660803052;
	h=To:Subject:From:Message-Id:Date;
	bh=HYNcgoQPyyQAvrQc8HiejTrJJF3gQaGi3TrBgz/oiqk=;
	b=ClAS5n0ckzej9jPgBFEi7bVOI7Nv3B97sIHBomkrBYkQj2sFSd5EnafqWV3OYHBl
	AIKnB2wtGxZaOUzIFhcDdiJ2MSDSuR9TduiJ9HsWn+NxjexmUtiLlbAk4SYd+F3tWvl
	cCYi42y33n2YkNs9YUQBmopwdJzq7OL7mBZwQ8ZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660803052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HYNcgoQPyyQAvrQc8HiejTrJJF3gQaGi3TrBgz/oiqk=;
	b=FT5M5wNneuwF89Z9rmhcIDJdxFOfUGsfOwCAdq1KiPVOd47yW7TPf7B8D+4pGqZS
	3I+K5KTwFZxoaBnH1JBtWboVO5wMsvKPqYXreAJIk9M15sNVz4uPT5VJrsrgtXFbRWx
	MDJ7mQtyS1BBRBH1marhedvEMi2O3d0FrA42gd1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af93742d-94d9e87d-8ff8-46f7-86eb-1fa56ed4f5fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cafc3bba27a048af68dc03dd0c5da2d69f49754e10a67d025a67d22350b6e4c
Date: Thu, 18 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660803052
