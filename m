Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D584420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657559812;
	h=To:Subject:From:Message-Id:Date;
	bh=mMnCjzn7VviACkMQtwLwosgXKba6XCQnNkP5ut+5yvU=;
	b=B/Ru9G2zkXaqg/Ucf4Ct0lGQ26boBHN7TwzSDLJ6fOYT5zVFbnyxb9+1hHfN9WWA
	VcS/EW+SWbZf/GZOkqj/kS0pIFh484STsUK2p09G0LDJzHVrLVUK2TlORbTKcbrLB9Y
	xs60D3xjfC4qhUYW9aOO0ZCD6ZoNZmbnLjSbIwgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657559812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mMnCjzn7VviACkMQtwLwosgXKba6XCQnNkP5ut+5yvU=;
	b=Vu777/Pap0K2zpLK5nMulBaLjcb8BzkwUUOySmn59NMaUQ5nxUpRDzaIl5lkpLgm
	B2a2YHV63G9vlrilhh7XKTQNlU0Llc7polOxpkx1njwzE9Sx1gLzFwPkb64Agd8bS6M
	Tz6SnbaspzqFC4K6uYBu++gcLz0S6qyHtFurGUXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee438906-e57ff654-116f-42af-bfdc-a0d798f1f3cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83892055d5ac3ec11568bd6a724e202f1ea2d35ac8dbf12cc396889487b0bf87
Date: Mon, 11 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657559812
