Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA9A7F1
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 20:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654980179;
	h=To:Subject:From:Message-Id:Date;
	bh=rbegFvolqJPFrUu+CFj8xvdqBKHdYzROwCZ28utuq4w=;
	b=YqERo+DqAiZlQAQVlL0X0ePWCcU03e3VMcu6d6djKpGw6T2KfsqtPTgoOHwePaLj
	dU5IimY5VYfujoCzUbrPYhtUdGgsrswL1V2tfG6gQlAx3gJm9mulLjb/3fxHxq3Ks2a
	CW9mn7bLDosgLoBwKf/FYaB/pXce0Iyk7DkOjJd0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654980179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rbegFvolqJPFrUu+CFj8xvdqBKHdYzROwCZ28utuq4w=;
	b=ii9OI5UvWK7onLGF8JWuZ4rzvoSEZkqFFe9od++e6me0HzbyGuma/miqS+9NyB7L
	/mlzyGppBIDEZvwBYAvKqbsIr6+XCsxOCpoOZljUr76VaN98TnTo0bUd0X93aIz+Gv6
	S9Dc24jsAc7pp1CLGkh7/wLaPXho1ot3953weU58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815481756d-e44737c1-427c-4bef-b61f-1f7dfb83d545-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6282be293764bb9376d324276a0a5ad9e85555388e5f163512848c77eb308318
Date: Sat, 11 Jun 2022 20:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654980179
