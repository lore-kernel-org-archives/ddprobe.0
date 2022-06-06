Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E12F7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 13:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654523579;
	h=To:Subject:From:Message-Id:Date;
	bh=5RtG5Ho9nq9b3W0ce7pXLVtkkAP1nKSwUdsvvlATDzo=;
	b=WB0fCoZt1KXEwD9FhzshRAaj1+DYOCIZif8c6tcnL09pYAO//ng0gPflwvHKdU7m
	SP/EaGv+L3gWuE9YVlvOj7iFyBhB1Sw8VEW0cyXG0o34zR2zEqvsKYl8ZzlQtRV+kRs
	mJdeC/3/arJWn5q/FHopUDCHXtZKly1PxnnaqBks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654523579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5RtG5Ho9nq9b3W0ce7pXLVtkkAP1nKSwUdsvvlATDzo=;
	b=X7vjpa8iRGah3vylr664RPuFQ7o6wKcpt9Y6Zdtny9R0+hdTsrgq4gowjrdm+J07
	Rav7/fet/TY+DRAwZtj2AQ7S86BwvVzhd4QVEewhNFa1/IJyy4+gMmcJQkmW1FYe8Dy
	nHhWS3eTNsAMAZ1MGfClSxgn8544Mw2Y3h9Y58VY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181394a4ba2-f2ad91af-dfc0-477b-b6e8-613a4371ff00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3bb8b7c12780c3e5cf115f4b084841e86a08aeba38b33873b6df28aa88e3b5f
Date: Mon, 6 Jun 2022 13:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654523579
