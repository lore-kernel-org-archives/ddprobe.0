Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7887A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 15:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655305619;
	h=To:Subject:From:Message-Id:Date;
	bh=YGNiCoqpm5Phj7iiLwHH57JlPqklY0ebvmHPlrfEAws=;
	b=aaA4ESJTidC9n0X5+u5N+yWV5l4oZfajN0CFCHcqFkkQIN4QArvbUYsTfDr3rUHj
	fcEVRejr2JnimpxBPvezluxsHoqI0XJ0WrLBq0lsRb3iEcqGQvYYWKEAaw+ifWEezKF
	zckMgHFpz3UikE4yOoaSB/R31lrh5/vHpzXZ3qfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655305619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YGNiCoqpm5Phj7iiLwHH57JlPqklY0ebvmHPlrfEAws=;
	b=XxrcZFxlZGusFAYUVR1V1pq+BvDZO2ufwPyFkNkxQ5Pz8IkD05MevXjgKH1nXk2m
	UiK53Kb2En4s2gggKza+xBOnX/PfyTOE3K5i8P6t4WgjqCANflKGHvOx9ikg0owgLYj
	EYR+iWrwXC4Ztm1gcDVdHTUIr8nH4BOO1PwmZIvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167e74720-276e6b81-19e3-4c39-821d-d706877a698a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec063fe48cbd28caadf576695b39cf1ff5c32ac2657326c34a6c6d0d87834ac6
Date: Wed, 15 Jun 2022 15:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655305619
