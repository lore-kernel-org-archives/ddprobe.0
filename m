Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663C27EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658887852;
	h=To:Subject:From:Message-Id:Date;
	bh=FCHhYBxmC4msWWHonprMIr3C/+I5FHF9u3tRokoSTsM=;
	b=VBY9AM2i81cNR/jYgG9+4RuKsAe7QKWoj1BGIb9Q0sen/9QNmESnnEKMINy2GFzc
	o0FQxB9Ht6uVNsOe9b2vNvwkBQnE5S6TvgUiBNBY6L25Ta9uAuMZpPkcf6iPSf/2KJK
	FDkWQdeEJ5aJlbky/LD0JLJyZMbYrtlMkoPf4kLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658887852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FCHhYBxmC4msWWHonprMIr3C/+I5FHF9u3tRokoSTsM=;
	b=QF2rs1e8fYUUd+hm7edUhPBhi+/siZm8Nkgu5+gpG5KU4GNKr+8iC1BMdgHbfTfI
	7p5gUwipyC2mmwOesc5upFvoRWjhpOhkhyg8TtTPqezQ1bKdIyixyAXMog6RS4QLlpu
	gNfYIRCOtzh5ClV/VZPD9uxkA+0EVNmj8jh6OHrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d6bd22b-69efd2df-49f6-4d98-b2c3-df5a5f64dddd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43c3bb0a6abb20ea33971ee29bc7f3aacd54f55c21630e3effb99590904edf58
Date: Wed, 27 Jul 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658887852
