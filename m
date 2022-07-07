Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB87649
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657198612;
	h=To:Subject:From:Message-Id:Date;
	bh=opm85hzmbNSIT6vaGSXtPP4YCk9XiDcwvqRa4FkzTpc=;
	b=Jongbk+ky0emlLRhEAYoNSmFyX78s18lucgiAA5Mab4Fvfz1uy0kGYSIaioqcQyb
	U+l/SnbU5vsj0No6ELtEStccAmUy9eE+3bk5sHAUFYVHOTpS26uyh5XqFmLROnK10QI
	MBroqokGPtj/2suB7O4BLcw8nTdBsZs4VWqYxgso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657198612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=opm85hzmbNSIT6vaGSXtPP4YCk9XiDcwvqRa4FkzTpc=;
	b=ejhuwb2JAKTYW6dTyHxj8rH4SqWSQ/KUIpomogUOhGQyZzrg/TW/nPXM1aWSlMuT
	laGYc4hH5C12KE1Phzx7EZUjICgn6DJO5Vtac0VVJOQHpTAefCuNZlsDoTsfOp+65EX
	CP5cYWZBbLQ2WKagvLmJ/YEnvQuFz5TCUGWrYjw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d8bc0f39-be2fe6c0-2a76-4353-8eeb-201126e0137c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99db8c061888d7d9c35f52fac18af87624aa0a2e7f5ddcb7bbc8c4419f216d77
Date: Thu, 7 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657198612
