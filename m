Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54687A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657774612;
	h=To:Subject:From:Message-Id:Date;
	bh=dqCYChTzPCOGdbdv7xekRyCtws1QzDyYrGYauYULNfY=;
	b=TyK56qW/WfU648Ed5jmFkIRWJ0xQlJ+o1bf43GRieaMYgl7p6hk06weAwNJVCDO8
	tEm7YagdQymVTKeg9hqJve+vl3WOiKxfYALTUSGBKFXuCcTP90rqQHwTzfGF60RzWQE
	OaZV8lvhzqQd4ikRli36ybuxdGixGeTa37ic+jI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657774612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dqCYChTzPCOGdbdv7xekRyCtws1QzDyYrGYauYULNfY=;
	b=ZuNGWhZcSP6qTmtYdhfpn439zg8Qx2upZ4VT+alEjCEqEhRXyS3V2CwfJxvzJDpt
	BAhfwV3Bs9B9YNup6a/kDTTqhYNefXmtiTCdcxbJz5FV1zjK/zyppXHV5MsXYCvP7rU
	srN7HT5AYbGaDtSFL2Fsx+zwAZYmqFhkvNlYSqhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb111f57-a659c79b-188d-4e7d-8e46-91277f71da2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fcc42f37f56aa6cb9623fe154b5197dcab729a3f429702409df9c3ae1473d51
Date: Thu, 14 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657774612
