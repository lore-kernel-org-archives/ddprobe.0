Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD9F4438
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7243BC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664924453;
	bh=zceRWWAF63tkseh2DvnEeJUtEbsnoJJ7pr6qERq9Hwk=;
	h=To:Subject:From:Date:From;
	b=ipH8ujYjCPfvfQbO7aZdMr00vzyL2xTuMJbf6yH0J8srS3kxSlpOynhNAdkrJre03
	 ZVDAQPTlbmnH1mNoHZ0rR6+0fRIKE1B82R5RSbtZeaxNANQV6RluV2STB5n8zb6Ahq
	 n7OLvWU5eHmd0bav9wRtCh0uacDGAD1u5DzUmoe4zlJM1q7p18+yHOHy/4PVWYn5YT
	 5xUJvigLBWk/bkoLufG5DNavZtnk777g5s0Y4FjcGqGjp4OsH4KtL9ByDuT1bfFLNM
	 +pRS7/xrNbDiPIj4H4Py4oLxnRXAC+IeZ7ZGQlHFwn0vPd8P8GD6BMaqax+Ih6zXKB
	 3hEi+Ut5vYDvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A48C433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492445334.8094.12285756948917159930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fc6ad57244e92f46a616d4fbd29dc32ea8e6f6d6d653f13fd6f4e344cfec03
Date: Tue, 04 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664924453
