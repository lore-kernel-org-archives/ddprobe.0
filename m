Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EBD7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659993653;
	h=To:Subject:From:Message-Id:Date;
	bh=mztJJW4MaybTIm7I4nhCFQ58kwU8HHmsFIx8nCI/Z5Q=;
	b=dpB6wf4N7PNbEcVKw7BfHDpI6Df64vmBPcrEdAKd3WVGtcdKkkrUzLxEG5lQXTuB
	b0ETI2nXY646SswO9vxVj7MprA2LLTSDR2f0oN1UDLBzhx3MD1Vf1P3hrpuG+KopRas
	1Tx2Nn2tV6ljXTYkU9sJzyWyZ5smcDhW2Yrqze1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659993653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mztJJW4MaybTIm7I4nhCFQ58kwU8HHmsFIx8nCI/Z5Q=;
	b=byAcXl1U/MOCDwxv0/iJHq6ilWGTlAMpyK6N3L6TXYMFHtVapvGMRqz0T6gpVq4w
	9l6ntC0jHg5AS8Y1o7CUl7wELnndhoAAw8UlLFntPQnpz8CKlemTUoMFSPjbr4FjRkO
	Z7xP2garQJjnpZzAl3zBtLQI68flmVdbU3wcDA2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f54fd84-655d93d2-c51f-463b-84cf-b537300075f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccdd6e5f2fa728db98d46a4ddb3d50dda382ae90c0cba8604ac0b043dbf4cb58
Date: Mon, 8 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659993652
