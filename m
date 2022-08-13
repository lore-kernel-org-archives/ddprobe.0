Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E53D80F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660399852;
	h=To:Subject:From:Message-Id:Date;
	bh=85TfYNM3dBwHRF/htc5fG+XnPaBx/Pu0VZbNU3cELaY=;
	b=B36gdu+GUJpWjKdr8RIJPv5DQkJ2fYzOo3hMG97uEcTyW1rOG/qyh4xf1IOhi6uh
	e+UD7J2aUYXYPZec/9RoHcT79fymlnttKkd/RtHJ0JfbQbyFMOVFIIgdHUTScmg1C8r
	E/gimyRowSXrzCPztpKrAla5QM+Z6/Zs1FvsZNHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660399852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=85TfYNM3dBwHRF/htc5fG+XnPaBx/Pu0VZbNU3cELaY=;
	b=FkceV5+XBulllTS05GW2FfZ26IRPvh/QnV5fubr0Y6VgXPyycBvJrTWNXDOxmYoM
	x9FQmc/vCEq1pgChu+/ZAFIBUfzzm+JyOFlkfLtA9viOVSWo0uz/t/L1Hym8N0artZW
	WmihMDgPQ3RLg8kqDkkXD++tSJ7GD0q52oxRtJO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182978b1bfa-c6e442d6-48e8-4541-a550-7f0445d28c5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f14913f33bf0f43149b9f89f8890a801e9d94fd909ca0d6f4c9216cfd192d15
Date: Sat, 13 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660399852
