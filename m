Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AE46D24
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656698212;
	h=To:Subject:From:Message-Id:Date;
	bh=zLUCDCfjkOVWrfoFRSmaVqMv6RD9FnMM2HNthGUXvog=;
	b=HOE0JZ8QaLEnDyjVY7KrFDgBMgJ4JENZqZOeYItg06ya7Kdp4y0yXvwe5lKOJ0lo
	ZpT4P9D2Mdx+JXTiUslpMZiM7jJoUaHEKaTyEOjLYPX2fnNaTijDWzZHNUS/Z+vackk
	3Y1grd2i/dau/bvdg+5ABd1bT7dQOQkqjfN3kGuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656698212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zLUCDCfjkOVWrfoFRSmaVqMv6RD9FnMM2HNthGUXvog=;
	b=O/Pvb2LXQ7zdt2hbRVreXeoqZv7bU62/4ndTWbgrmSuPv16DbD2KDkpZKUsJrcL/
	DFS6uXFnqEpReGPcwwjiFM6OVZkesSUMVBIatdoxXINIQDqmZwUE27778bBbwaA3Pkx
	MXuevn+KknyAQtn55B3HSX+/jL6Rl2q+KLortk5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bae89017-7b49d5b2-a981-4d58-89df-7b22b7282765-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33ea530bb03ae0e2c0f51ab1b46a66c256a033c515db62f3dd25d4e30621e927
Date: Fri, 1 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656698212
