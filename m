Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457D97E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661329252;
	h=To:Subject:From:Message-Id:Date;
	bh=K2+knvGDq80kX9iz4BPOvhydDa1jojL73K+TjmB+eG8=;
	b=ivAt7xKKZv+nWd61JKeYKoU4M6UUYC8UldNvg/iC+nFC640NF/TLbDjYKxQ3oMoH
	Z4P6tx26k8zBzzaKUtvIjYkdIc+S6/ieXOjmdUyUMvEYfxDpmHwUx1d2iQGcH/WP0V7
	tNFYbNeThnbVoPtF8SSCu0rdu1n1Cr+/cthSl3ns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661329252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K2+knvGDq80kX9iz4BPOvhydDa1jojL73K+TjmB+eG8=;
	b=KprmVOyB3YDI8lIy2f2Z6cAwrrO2c72HRMr4ED/Cc7EegY0uxp06givC3I7YoX3K
	M/y0JcW/dP9h5hgj9w2133GPlgTo2Hi74aXl45woLab7kq9t1aLkOTcQZqj2phwLgen
	IfjdRRUQcR+I5XhTRmp/LkfsNwTsHTeu4JnDg5Rk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cef0a0a5-7345b14e-c1d4-470a-bc22-288ca3e65915-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ea08cae9cd6786e2db107d224ab37df123b3461a2f5fe80130faf681da41db1
Date: Wed, 24 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661329252
