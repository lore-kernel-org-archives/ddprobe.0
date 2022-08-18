Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB507B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660851052;
	h=To:Subject:From:Message-Id:Date;
	bh=6XcBAjNOAawb0UEgp9VtiJVtueKvW2afEOsYLfUtpO8=;
	b=G0iTgzpQg8iD5FL8HoLrMWNSdxXelEa1o9Ah9MeSqWKIBCYuS2uTMz+u8RXY6Rv9
	IZMqEJ5/y5zkc5tSN/71c7I9rYeeB9Sj0zsbMYCf/aub0cHvrDK5QXXXTjxNb8ukQT4
	/rcqyBBdnDUfDEi6neeYydatKQKn8O1J473TAygQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660851052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6XcBAjNOAawb0UEgp9VtiJVtueKvW2afEOsYLfUtpO8=;
	b=QXrFxCgmXKXu3ZeZ70pyu2zMmWcvh/RS+lQX1rVYgINfK1HQ5K5eGFJQYj9yjV9x
	fR3ATziQCSWB8AAesZ9NaaqKzO8+UkT5i1+YM62O9Wq59OtIhZxkl0NcrQ2qcywZ21T
	aFwits1s+Rv7oPLv3nZ9YqqsE0JG6czBvBhQpjJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b26fe00b-a5865421-6f2b-4f2b-9c41-f73f240344dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8c89ad475441d993746ccb42041aa482d2e6e2bbc002764ad15dc95db62304b
Date: Thu, 18 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660851052
