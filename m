Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D362191
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 04:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654663679;
	h=To:Subject:From:Message-Id:Date;
	bh=yuJnviA4xfPfvMD6wl2N+lCAXq7CXyQLWBq/2hcVnKs=;
	b=dgQBr15+e7WB564WLnMCjt35J7z3AZSI6zwElqxISW+m3JYb4UUF75d1w6GrdS2E
	6sJggXQsqBSFpxDZkOWnOzgK1RwHCqYNJYhlXWfiDyCHhNjbXlnhcr9rfrgJY4qyiFH
	PBxzDGc66xmQqw3fZBx1HG2XcwaENXG1n7adiugY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654663679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yuJnviA4xfPfvMD6wl2N+lCAXq7CXyQLWBq/2hcVnKs=;
	b=hrxcQzdBYIQ/drgw+hqvxq5juzVBKmhc5+zgihdNNQr7fbcdMYd0q2o2ICjEFKXc
	CIY69BrmBU5vX0nUa+13Dh8DCpbi+vYp+3geDuMZvD4rrGidzvS7m3ru396JktFcBSb
	N5XVhlYsyAAdQISZE7u6HGkZ6wfRtF+1V7EjmjK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018141a40d1a-8b18cb6c-a041-4ccb-9bd3-0f865dda4214-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5616ecf710c5308ddcb59320602407b9231429fbb2f3e10522cf908d2c564962
Date: Wed, 8 Jun 2022 04:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654663679
