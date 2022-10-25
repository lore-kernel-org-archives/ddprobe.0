Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6147E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69ECFC433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666686653;
	bh=Lwe0b8JZiLkDiB2MrOjUMSzucEdlHkQgM+oMmh1Ep5E=;
	h=To:Subject:From:Date:From;
	b=Smk72qmHYoAXR2LOT4zDTded1UfCr1yuY9dbanBPrKhu9xs7to3YUYdXkubLB5IkK
	 2lTLLYWJep2x8hf48QaqY0vBE1FT74DiCFQmib+2S3bhFljY2VAOapM9xXfeTHNif1
	 zDINLpgbKHCApQOO9Xvlmf8rfhUm40ckXOZT0GjwxqENst7Y6PuYcvKFpZ5bQLTs8r
	 i61NTTCPY4lW3eiN9oK8i05Dnzvsc+U3H2kQSCNwoguEZI9ZJzdBMkUreH06Gbzvca
	 MGe215oQZLG2OZ3rsHPzAoAe20RXy8TvGTN7y1NlcBsqdlodJ6zsq56cwZT8QasyCQ
	 B2bQf5Sc6fqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53632C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668665333.12060.9345706689134114776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d4c2b6240dc0477722772769b4b48385f2d404e9f0d235d3e6ff1bcf88da67
Date: Tue, 25 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666686653
