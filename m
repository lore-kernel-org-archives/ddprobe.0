Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C152596
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657222612;
	h=To:Subject:From:Message-Id:Date;
	bh=JX6Wliw6t9zXelorAlqxRJQkcPFzGvzJy7+4WYa2C1c=;
	b=fWgq4D/N26CaOP1Zk5FbgZeAEqmE6OZrBo75WJ3L+lGGVcJgxULE7Q1rTyIAMNgm
	TKSwv870qmyDgg1rBrumGx//+d43OkKXN5PM2yAI+mmuWvoEsMX2b5YB/PGogyde+8G
	XzMu3mMpSDw2/GsxBDJdQlKr1iYz4E2ivNo2NuZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657222612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JX6Wliw6t9zXelorAlqxRJQkcPFzGvzJy7+4WYa2C1c=;
	b=XRIQcC7A9diXpVjdrlK4duXU7qRuAARyfkYbPhzYFTLHgELKk5l5JOuk0JGJ37DL
	il1sNYcDIQ5A9KAHOxCTf5ZRbmfvYcM2kbIjNV9CI2W2mFneoiIGExmVqqhE/Uyma0N
	xizvq5Vf4k8JqivaObh3l7CSO7kcuGUSzjaebvx4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181da2a4528-d4661e26-5678-4250-af61-67218f45a80f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a91f819acb25cd6eb2bc0db260a117352536185edf24c9460129bb1d88ef9fe9
Date: Thu, 7 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657222612
