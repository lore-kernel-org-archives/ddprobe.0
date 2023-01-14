Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB05562A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81ED4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673661687;
	bh=6ymc510apZuWINoeSDCRpoe1rIOY9ofkrfezTfiNg3Q=;
	h=To:Subject:From:Date:From;
	b=a0LPO3sdyyu23vz9jBk1GxWB3K1bF0P2Lrbt/evbt3JcWVCgrvG+/ywgL1Q8HSaY3
	 XFEqWZK9aKXLiM8+u3uWyUzCu+SeGpti0KE+mq/4xZEzhhJSLsBRSAe4r81byvltt/
	 VCu7bCQa/q4ZxJb7UPX8PEGzBAg8CqwDM+h9flOGVfZnng2JMxLUFzgq/BF83jHVTm
	 HYLkyhgzpuL455RQEUj6LDFo8khUicFmUZQFYrdidmu26jJ1korqzO/3AcSqK7ynCb
	 x5Zbhj3edFdUz5tR1GJicvbq/YDZWXTML+lOqd1MKaZ9CCHY6I89D9/+MOvfCkivH8
	 ABHFUYVwMtwzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651A2C54EBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167366168739.16686.505235533952835460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 331ae6ed83e3a169cd32994ae36ee68314df29789a49c28f5bd902d133885442
Date: Sat, 14 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673661687
