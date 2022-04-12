Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D317B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 09:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649756998;
	h=To:Subject:From:Message-Id:Date;
	bh=EKyxrnyMJjAoSfypjdiqq6Z3YnfNUsPGYD03lvA/fCM=;
	b=EDITuLNaPAnApEzSHbUyNV82guR5CC2URUo+lWHVO2IVpJzwYlrmiHflO017UNAc
	bHXvs1WoBwzcWFInUuZAWOTdmlBLpA2ZO+kepS/wrM/eci7yDOYTE+FRyNQKEYYqVOy
	KCO+ggJiSAl5DY7YURgdUveSbwO1ngVgjbpxeoa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649756998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EKyxrnyMJjAoSfypjdiqq6Z3YnfNUsPGYD03lvA/fCM=;
	b=DdOz7Cx/Oo1dxXDVbcoxFBpNoBst3HAcvXQ9daR6OJbxsMFv9mU0bCX0eB4OmIoR
	Q1FiesMc5gLHivAHD80VejiQvL/GvBwzRtNb5Rt2bq1ej0+10g99derK1MmK2WskBC1
	q0lNUpUlQZVtYgIAR6OhzVLzlkKB7NBudJ8R4TtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801d2e0aac-8c93a06b-69ca-46fd-89cc-784ddaa4b92c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc5f10b971e964ee2664ba0ca2b3cec7319b5feb5e385d29d161ced3a4631f88
Date: Tue, 12 Apr 2022 09:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649756998
