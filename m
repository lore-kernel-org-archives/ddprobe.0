Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779F223CE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645810285;
	h=To:Subject:From:Message-Id:Date;
	bh=sVZ2ELWsuM4nSxUoY2uVzZ3ENLWkb5W8F1d1dDM6H2g=;
	b=mPipn+XPVj6q9/dM5zyfECJaiLkH2vWHPXQ/IH6xSXnCdsbgKZ4ETuRPYAz2e9Hp
	yTK9idQe01y4iTOQFCS34hO/aed2mgKQS/THgfn5cvbCHiJaxEpCp0CmjfsNmNmspyV
	Aba0cMfLkca1nLMxLCOHTKT9ddyVWFwL3p81CaVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645810285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sVZ2ELWsuM4nSxUoY2uVzZ3ENLWkb5W8F1d1dDM6H2g=;
	b=MbZgXeoFDyIf3deN/pY9Bv8qckdUBX2tFkgGZa0szWpsC4I0TUeuXf7ns+hIpANO
	3SN+9I3MNasYlo51K9UlzmwDPRd0rKAsh6NbxKvkLBV8CrHPqs2hHjGODDqqPAYvHYE
	XdnWAck3zC1i/tqJ+JIsEKzyhsCdaFRVsw7PfiJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31eff8bb-c97afb6f-0700-457b-9502-9dcdbfb69551-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f3aad481cd0f33f6443fedba68629fe06f88727cd940dbb72e748f54973b7f3
Date: Fri, 25 Feb 2022 17:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645810284
