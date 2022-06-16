Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C067A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 05:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655356619;
	h=To:Subject:From:Message-Id:Date;
	bh=LVsHgQuhUQS9AA52j3nBERznji/rL1l1lndKSr3TIEk=;
	b=gAxqxZ3pAe1ofKV1v/+6BRXUJ5kGTaUJtxbEhGI5wqMjiVmRbi+jZemFiQYx4SnL
	pqeo7uGeHIGBI3MHGeQ21rKA2kAAdrTxa++rVO3iF728YfR6kiP8C+aFN62VNzxVhsa
	/i6slrZIbVV6iRmNBNlJzD/EHp7ZQC/ZpF91DN10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655356619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LVsHgQuhUQS9AA52j3nBERznji/rL1l1lndKSr3TIEk=;
	b=QZkGIRhjQUGfrcZ9W9gGJZ85198eIi2nh6O7eKq4n0DjRz2waiG9Nn7nyOB1mUhQ
	zNKhUXjhfx/+iDf2Uqp8QjsqbuarLeRXB6Ly+mmOYZQGN7/loxdxUB18euYBkE2E729
	Qf6YbCnV7/G/a8qyJQ7X9KgYVkrt0K5CQK+u+6bk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816af179f4-a3dcbf0f-013a-4ec4-855f-4fdb4a8ad81a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f68877ab644b8f430019689ac6d1ae1453a35846f6ccedee555ca2824aeb30a5
Date: Thu, 16 Jun 2022 05:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655356619
