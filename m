Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170ED1869
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 17:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655920439;
	h=To:Subject:From:Message-Id:Date;
	bh=GAfSyrSbxEol1vtAKLWOyDvj5gbJAVmjjRNCNSmwELM=;
	b=J+zqjQ4lyjSP25bkOIOLLMWIQGKN0oJ509ATVPT7eJkUT0VXKEaEOBQNuRZSrnl1
	LsHeJEtD0e8XLXzAZJfASe4gvZlL4Lh5O1H0Zm4zEiNo5XBW4j0dwNMiOI3riV9dQQi
	wAmj2Dn9iUI+q/ynmHUEeT2yA95FUHAJEz9L6qBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655920439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GAfSyrSbxEol1vtAKLWOyDvj5gbJAVmjjRNCNSmwELM=;
	b=H4y5hnKYhk/JjtZyGKOwNdjqQP6malc+EemAbU9R8lIJsAQj/Uqp4iTwTacBCLni
	LrwqagaQe7h1fccH4aL2O660NkgeLIufzLfOqsZy7Stk9+50ZbKo65+SaifBolcJX4l
	7cqlpLRq96UQmIoX2QvTnTROvnBZkf59oaUErUiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c8cb002-a10ce02a-5d51-4c2e-b901-8be1243158d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99b5fc3dc1fb003f8e1c8a146154d03919526abab82481a271ba12e8c822631e
Date: Wed, 22 Jun 2022 17:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655920439
