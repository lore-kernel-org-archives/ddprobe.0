Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6F42917
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 17:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653846539;
	h=To:Subject:From:Message-Id:Date;
	bh=9HqtPpH60mccigybx6tpi8WO8w3s9Q4EW3eGukmV2ac=;
	b=ig5uNQhTU/r7XWNGFACDxakbJwBItO0vL8hHIP75fnfoPDrQDX80FhQ5wJXOzYwd
	69tXHaPuRGJgJN+f76Q77ztjHmmNCY8pcBjWbqQ2opx8DBt9dyR+fnSnc8/buNVjYig
	OlX0x2QOAC8tRUgUgm4eED9vmMgFVo6sXmAavL0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653846539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9HqtPpH60mccigybx6tpi8WO8w3s9Q4EW3eGukmV2ac=;
	b=O6xNYsZNrsHBajGx71hBJbJipn0W++fn1INLTQgdKf2iJv07UwsfKPVfZb3XL+J2
	xv7GJwvV8bAPfMy3Ey3XTxXw9R4+WH63R142o60hvZxV3UUp77IRV1rZgWE1WTaUhW1
	rQ8SdWIKZWfttAJjDcjtUz8ITDqYkpgxJUaNeSsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018110ef7c0b-d0db4c39-dcdb-4640-966a-e9a7d3bdf210-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6270895c658ac8becc1581738cd3bde617a84f9d7ce3ee5b2cb22a27f2a43540
Date: Sun, 29 May 2022 17:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653846539
