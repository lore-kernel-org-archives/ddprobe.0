Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD937EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 866B1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673628687;
	bh=Gpro+qe7qLQaav4GxXRA4Nlbs5wAu7Wh8ydX6QplC3Y=;
	h=To:Subject:From:Date:From;
	b=ikc5XVK3rNMoeppGdpDnFxnEPUyo9dJ4qxkFkwOriI6SaogSItGeAf2MZ+XngsQ8S
	 vMFfOSnR8jWnEt0/wzcSEF0k/bsmFTAl0o5nQFCEj9vFPlXvrSKXVni0KKM97kRVkS
	 sfJnafCjgnLXw1sNqdrM1X4o5KRP2ef5Zm263SY3QsnweEkfTqx/s5+FuW+eXtT2MN
	 WaZPtesbCbnxXBVCosB7toppXsXm2NPCI2f6gT+ussqD7AXU6dttNp6Ttu6PJAF23N
	 rql2B6tYqaPbg2KPtTy9gO3Ypl+6Qoupy+MKw2CRpK0d8ZhpbnRVXoNbQCNcVkfeod
	 Ob9bO6G/R6aZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654EAC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362868740.2303.15538620033209710760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c703f4f7ffdfb722811d0e4cddc93b753f35616853b5c8d22ff1af0256566b5
Date: Fri, 13 Jan 2023 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673628687
