Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F6C1FB2
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656830212;
	h=To:Subject:From:Message-Id:Date;
	bh=+pZxojgPd1zOYorjDHpcB0hKKypW3BGfeBkQCvTJhGA=;
	b=fFOWxpxwK5B/eSlYtFF98eydNTyDkWFamBvclG/1IlJ+bs2NRG6b+ktMxtxIhI88
	9KqtOmeKAPnqGD7X5agwbZllWCCkvWEKO3SxtG+GDbAL8UchEz+KEBYKudl6LuQKZHc
	lTbuWC2VH4dZ8S71PmWkV6L+1lKZCdJaHTstaL8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656830212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+pZxojgPd1zOYorjDHpcB0hKKypW3BGfeBkQCvTJhGA=;
	b=fBq59zcOOy6c8tRxpcAaJQHOfj7Z1n/8F/nO6qFyiixtOvasCgUu/Olb77MS9LQJ
	b1uUCUv4eRH7L3+sRIYL2Oj06wgHH9QtdviydyN33Hnz8VOT5aIcQLdPuCas89IxfbT
	1GzfGtzMkRfkmEJWA34J6p6XrvuKkMjCQ71mhsw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2c6b91d-3d2c89d8-b382-471e-af53-d05073d89658-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d027c468146f1885d340cf0d399fd925de873576f6fa2cd49eb858c43d085cbf
Date: Sun, 3 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656830212
