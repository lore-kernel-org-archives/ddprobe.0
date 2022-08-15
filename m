Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8E1EBC
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660567252;
	h=To:Subject:From:Message-Id:Date;
	bh=Cdkxz5pvcQwzLK4RDpUg33r+It1R0w7hYBV2jSQ7gGo=;
	b=jFZ6RSdt6l7UR3FO5c2g6Zz3zwvDETcq01TrKQGV+xHCpYaaHCcuPBwlTaeHzkwQ
	U8OVM4+xTfP/8Huy5gb+HW4Ckdjtg7Qpv/2JO75lC9LUy+AMZSRg7fuF5wLIZofs6Cj
	I21gelipHru2v9wxQkzl0havQZcB3XZua/O5t7uM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660567252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cdkxz5pvcQwzLK4RDpUg33r+It1R0w7hYBV2jSQ7gGo=;
	b=eomk7tiiI95TTf6mUUseN4/rdi+U9EWF1jqwosbEU0C/UUWHyQfI7psusq6mn9+X
	elIuIb30NZEd5JqPOW1OPlKZ/jnzlhSoFThBDzMLrUlaCcfWcnPcnkJR5a87SUpYnBH
	hLkVbhmBbEUNblsguWUkGGDDTx0vZwY1gQ/PTtKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1856e7d-ca139117-f1a3-4068-a757-ebd850bb1cb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56b7788039e81778d9061bc730f0204653f3b0426d5f0ee667cf9bec8da3826b
Date: Mon, 15 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660567252
