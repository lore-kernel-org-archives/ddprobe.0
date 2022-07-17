Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2868620
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658047012;
	h=To:Subject:From:Message-Id:Date;
	bh=L/wiYmFU7xRRy3RbxMTI/9UpWPgTQEEzTjLEGa6dNPY=;
	b=bw/cUAZW6wEFFKKYsHJXnxj3Q0A/cSeKOOpcSQL3FxBTM33fNdAdvRb3fbbzOcTM
	yBY3RXc2TeaXmYA1Bc7lchU+E8bWE8Y8d0rrvPD0Y8sEYFNFjdL6Kgp2ONbY0fW9jrY
	DJ2MTMHrVgEB5Uyhgcch7b+wepQI05JRfK73n4H8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658047012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L/wiYmFU7xRRy3RbxMTI/9UpWPgTQEEzTjLEGa6dNPY=;
	b=DcO7zEWKiTKVxE+LT9jPzFvFRf5UD7pcivya1iKSfXF1MiZyOi3yCRpGXhs6aZYJ
	/gYULc0Sm3biuZgOmS796SGfipzDal7V+uXFV+ZvZxMou5xB6I0m7yIJZ2rWaGun2BM
	mBzOd93uQsNRdUKnBuNyDT3Bo3IxsaPCb7weAsFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820b4d9dee-455c6778-5a7b-4107-9bc7-cacf348a6831-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f9f611fcda20fe835bfabff9d0cb5246d373148913ea69e5b35632eb86e6615
Date: Sun, 17 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658047012
