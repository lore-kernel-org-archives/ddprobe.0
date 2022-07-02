Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F651847
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 01:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656726412;
	h=To:Subject:From:Message-Id:Date;
	bh=3HK298WeHZvAJu4FQtdkpXfzGA7RxF2zYIgaeWhVt0k=;
	b=YEkaB5WuEnalRvzyJZDNvE7wc6qBABndT4Fv0OMHEBLyEg2G6ZT7LDOPY6jVKVKu
	CR8AqpZ8P7X7YNTW/sdv6SuRDghUZDCjvPObY4+87ZNCG9zMc1r+8euwhhDgPPechlV
	iPD6JNAvTLBn3zqnvcMPFVBhuP6WkoXWSlL9L+0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656726412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3HK298WeHZvAJu4FQtdkpXfzGA7RxF2zYIgaeWhVt0k=;
	b=MTqU8QQDkjLEDQFDUjcewkcuCzTknjQAlI3Y5CP0sQvKLK7cZuUlyDKsZqFwadVo
	RgK/dHTZikvAeOnQcPLHVbSB7ZDX2wTJvsrF4kKJZz7ZpBA2WMXubYX+PlliPvUw7Jn
	76KGeXgHgAzt45jnI3B1Noy/SBY2fUh8mxaal2C0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc96dbf8-b1814f07-f325-4e3b-88ef-227f2cdcf9a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b82d58c60f85665ae5cc28bfd6b7b3e61ba5c80441db7a964a956b65ac135a5
Date: Sat, 2 Jul 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656726412
