Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6D8362
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660369852;
	h=To:Subject:From:Message-Id:Date;
	bh=aQDvpjdOHayciVUgz4T6tC27reUGajWDm3pbbbgW30Y=;
	b=QZAApxo3XMEXLDACyVtxzljYqngkO0vc8hdt/z/X/Ad6XI++nEMy0XEOqtF8TDi8
	VuPvG72hbEZdUzcJRiyOv0folHDzH2lx/wmzA58MAgMNug1iQgRJcm39LugKup3IVUA
	fK2uXPhW16czybkJMzIvmdnUv7DBzEHvUz3eRfog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660369852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aQDvpjdOHayciVUgz4T6tC27reUGajWDm3pbbbgW30Y=;
	b=VvKaQdSGxT+cv9Epa++QPCqcf8/AqdmX0xZFBZ/sKnvGJoWB4BF7IDkhikcLb3Sy
	IH4I3mzbjLxRE+KhU/CbGjEaOtMyEsFg9zE6hJOVc+w73OlCUwJYXFttIKx8L2j73lN
	r/r052b+GNmfWXKu7DNRJ4NlaNpzX6vorlf9NWHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295c15889-548a4200-750c-48bf-a7e0-6646502e4fc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5642f7a7cf7d0c2b29f3cc3abde3a826e10f3af146250d3095b24a4ea0242c7f
Date: Sat, 13 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660369852
