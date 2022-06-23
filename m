Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521A543EB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 08:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655972519;
	h=To:Subject:From:Message-Id:Date;
	bh=tCnzw5jX6U0tLzz5hd8LfUIg9dEB9r8EATkf0nKQP8Q=;
	b=PFxF+Ql0sTCbj0NKjd1HWbXCIZxaNmTEil82sJqAvJQq1+NE72IhKU3M23402bLh
	3+7guP/Q82JYZly6ACNOAHhvKS5rRZIOVl4Z8HJ+UF7jWUXVk4e6CkPDNdkod7BoGGH
	3lsg4zypRj3BcnyfiAEAcuOfqCOs8yADkGZzK32Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655972519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tCnzw5jX6U0tLzz5hd8LfUIg9dEB9r8EATkf0nKQP8Q=;
	b=WOgDFGoT2c+HWT+WDbxQ9s6tZzzIgnx0tuap4ckrpVr2rlKpjpUoZ6AjDKmhjnUi
	HVGC13sH+QQApZrvXp1BsXPP7ThaYdJTXmhDdQl8gGGIm8jy6bHKkZKiLtoD4ywg11q
	lxqz3PRwCYhuaHeTNZ6e45q24EFUf2g0kh12Mpns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818fa75d97-a567133e-7193-4f92-ab88-858f602b1221-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7223eec79e7d0328bbc962409bcd5f9c00cfa9868e6f41678f8fe84b32ed6c0e
Date: Thu, 23 Jun 2022 08:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655972519
