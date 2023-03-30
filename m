Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4C6185D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 06:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F9AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 06:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680157145;
	bh=YZfNIxAZPCBzVaaPcekio1TjaxvtWE63CoOUXdvvQa0=;
	h=To:Subject:From:Date:From;
	b=cRiecN73WeIqmktP9mi/ZcqsVEXJLmbwsZZQbaUHddl0d8fnC+qqBakKOymdlqKud
	 3UfN0F42zCf5sF51OzBWwJpImEpdZpji+ea++I5jkEmDqKj6e7B6ibAsDK0m38ywTK
	 3j/iMVkjBX6jUTVbVlE/Q0CYDHEcUXDMieUGcSbF/7iDQU/bppk2Yg7kvmlu5T8A+o
	 EQ/5JiV1Bah1+dbIrOq8yJL+9B/+h1GS4PxOScFGKHk5eYCLLI2BnclpAIcVey1/Kd
	 kquwXwiIp5Eu8CuF09EszK92JRO4EH3aR1TE/T2ktUntpyyDng//MjoeaSEcn3+UgS
	 YPmXaF4dROs1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD02CC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 06:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168015714576.4311.1618133711436631399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e54cd1b0e3130cce53bb156ac7bd3a9997604fc1ec2bf1df4cbc4b40aa30809
Date: Thu, 30 Mar 2023 06:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680157145
