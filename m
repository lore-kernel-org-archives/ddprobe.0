Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE59366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660278052;
	h=To:Subject:From:Message-Id:Date;
	bh=Nax/FqCjR7jKDnWmE9fQ8XcTpdibQVNrJ+lXXRw5TGU=;
	b=jLTXG9vRKFFX6yxJJQtQwtV9g0mf1HoZo07Dm0JYCTQ37kuD4bXGZYvtXx0koIRI
	6Yb4KTg8rYCRe4ibfG2jAaNwzC1OOQ2QMQz9rTHl56cjavWvhJ5k5qTHu6ky+3QYIhI
	Fufz9tSx1L9Ve8sD8j7z7FLa4WUptPgevaWtyxZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660278052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nax/FqCjR7jKDnWmE9fQ8XcTpdibQVNrJ+lXXRw5TGU=;
	b=Wta/WKKTgzsORZ4BGECgkxDyJvwtcpzO+XXG8+BCmIiwkHFkzpsmtmIO0rLugPkj
	kvBm9DhXfdQmJrESt9W6npMfohAWBUjQrC/tIIuQ4dMuVsOld4xenjwf2gc/pWK/gdB
	D+aDqpVlWmhTh9lX+VMExXgia+KdIEYNyOcMiaVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182904896e8-24f468f8-83ca-4ad6-a7d8-37ed549d14c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c146aad07793def24024a562b801badb732ff1df4bdf9227714359ed1727cad2
Date: Fri, 12 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660278052
