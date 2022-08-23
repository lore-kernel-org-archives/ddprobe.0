Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665D77F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661294452;
	h=To:Subject:From:Message-Id:Date;
	bh=eMo4CK6FOlR5fVM5W5xwMCJ+eXp9LYmvmFM6pQRu8yo=;
	b=jGD6kuKywlwO1kfrGoHUr+sRN2ZvKN1/0xGOsbDVkOAo6KbIcdxVmIj84SvESp0z
	yfstlhuvS4U8BaBL2w+/KjAMuJAxk7BiSynIUB8RlNcvybjhWAz/SnOMN/2puycUSED
	fblRgg7n3nBQJsvEV5ZJZvzvW7mmoCpkOZSMzcY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661294452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eMo4CK6FOlR5fVM5W5xwMCJ+eXp9LYmvmFM6pQRu8yo=;
	b=fbewXrAL4TQW/gbqrQGUDnd1agPs7QJV7zv8MPPDtXn2DJySA/81vfU7ACE5GVE4
	rfMWDlTXpTNdrxfvDhBxrisHLYTFnPctoBW/nLjwqfQU6cUTkkDdM3oA6no0UxD+/Wv
	sd01Ae0S8LlyPsqI5+ECB2Q0o7cT9/txlVv0tSeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ccdd9f94-6a97440e-8efd-46d0-b8a2-a4b8831a9b82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 524df51f7d98f8c293878c33eb80e1cc5ff05ad98b157d1bfb415e6b6c0309e6
Date: Tue, 23 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661294452
