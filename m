Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CB1371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661065252;
	h=To:Subject:From:Message-Id:Date;
	bh=iDyvOXUvcEbjCegyrMJBdLhmSJXn6Cg7v/vi0lFcLeM=;
	b=QAh6CT5KndhGHPfu0oQqQ7knlD7pZbuCDVqAeNOrlmTmutwIS1ao7bwXbnckwEcv
	zRQn9n2KWrJCt2WfRb2m+vqqpH1V97uGGpoyLW14Q8spVeQqbsUFwKT6/V58CZMA8l2
	ujyrfJQxygzp5vnjoIyh0SzqKD3/OP90Nz5Wj7iI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661065252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iDyvOXUvcEbjCegyrMJBdLhmSJXn6Cg7v/vi0lFcLeM=;
	b=RcZnqUAfN2n+MLN7OSSkQaCLFiQ8YMzD/LgLtv5oKvbsgNEXlxv/nEOet0epXOz1
	55zFgFIZrleUgHA4HLxJL5caCZXqQY6O8iwbkr+alFMwkXU/jIWkn5zLJl8x6xnBChc
	KkDjxl0q8LE44fbMO+ENXtkMNIYCbwuUsUnVmkYM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf344ece-c07255d8-1314-4607-ac5f-7e0c61164962-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de1004ac8004b03bedfb7c9c0e482b4966b76e73f9e9eeb57176e3092f69e291
Date: Sun, 21 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661065252
