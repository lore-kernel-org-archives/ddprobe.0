Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C09D1851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 09:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655199179;
	h=To:Subject:From:Message-Id:Date;
	bh=nzi/U8K2R/D0uoV4Osm8Hm2p0j2o6mE30CCeZ5pxrEg=;
	b=kgx0uWnLuyOFwc3/rMXqZKGQN6EPT3CV+Sy/0Ly4JAifh5CvQbymBy/51Nnk6rWc
	dGNYPq6J37m+EKX1AGJNjSYI7SpmilFSAvx0EYlKHSZq7/EXsvB1Yc0kQa2mrW465BE
	7jOTABmnlI7jL9KiVnTttIcn5BmyBvKPJP1mKLG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655199179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nzi/U8K2R/D0uoV4Osm8Hm2p0j2o6mE30CCeZ5pxrEg=;
	b=GJMS5otZNID5SxO47VbhDAsftU6uZmcKUBTBHUKuta5mYFkCt1qwkDikPOIyYFio
	GC1GVEEo4TxcVzBXxNrS3RJ5KrrxfNwy1HqWpf5tTRF7aV1PVEpeKIsxT/FUBatCEVP
	JtYd7WQdnNw65MT9wqSrbKyWmfqBwnZ0yDj/41LM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181618f21fd-bc41f925-60cc-4a5a-b54a-cf0f605c1860-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 957406dc3641d9d1783f0d7317e1491b02b6b89ff2438ea7a2ad72c7678cf007
Date: Tue, 14 Jun 2022 09:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655199179
