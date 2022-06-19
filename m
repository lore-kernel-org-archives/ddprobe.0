Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E474C7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 23:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655679779;
	h=To:Subject:From:Message-Id:Date;
	bh=CYWo4DP40WdUbT1Ll4McfpR9I7oxlPhTtArdCsX/gGQ=;
	b=DIdhJQetFHW65Qw5bal512j89fu5UPjoTUlGdslsCH+LpcbfIU6NheSN5dhMsoD7
	gmLEnpE5Pan8gfITbHR99JmMw2tjnjfpT7qkbnLMEF9pf5ekcAWvU/akOxS68vHw+RQ
	pGVsMV81FMEbKPuCbKOuDlylRBMS0jdBEgbm33Zc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655679779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CYWo4DP40WdUbT1Ll4McfpR9I7oxlPhTtArdCsX/gGQ=;
	b=G5+v8Gc+GF1QnJRAs3CNvX/bD8NjyT3GQC4JfyYZFgK3B0VStZP/q9eO9egqu0ye
	DGKqBSVS/5xlAuavJTYQzgLZFj6jVs8+eWBf0RlIJ1xiLcSwJBAABD8kJvrtr8veJN5
	bxBPmI/qzqAdmqmyA4v5XfstLFSFWYAzYo9BPoeE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e3481ee-99660003-1d92-4935-b180-7a24280e19e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 166ad088cbf89200e60a4822001b7dccdc024da08f363e1d181b171d237149af
Date: Sun, 19 Jun 2022 23:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655679778
