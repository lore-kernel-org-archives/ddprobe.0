Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8B6B53BE
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645287085;
	h=To:Subject:From:Message-Id:Date;
	bh=dxnvvjXPbVRJ5v+c3GNjGoH+LK1dnvlDP/CDc77BPxo=;
	b=XkXkSODqYEwb3lM/kY61FlNUyjUI6DAiweszvAqfRH+fcaiTyWSyOncoyGZrLijG
	NB/3FAuxPpHKvToLlI5u9RGkty7tEIaIpuBEDLGmSp4byX/6DuM+jUaoz2cVcHAzqC2
	/ztGGPyMixHm3uqAQxwbWhMSWx9Wbojfqld4KcRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645287085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dxnvvjXPbVRJ5v+c3GNjGoH+LK1dnvlDP/CDc77BPxo=;
	b=UJThIM0XII9HH7eMXr+GW4RvT01DB8D3YXwEQwphBXhsWwRtHO7al/uxM+BATjVq
	Fu+Gp9P29E1Wbhh22EX+T/oxWBZKm2+TcSXW7x/gzjCQa8TaDO3epw3aWA7BXVdmfOb
	R5+nmo7R6s0geDLGlV/eXrT9cv9CWFIN96Y2ZO5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12c092d4-1e8dea72-9b3e-4a86-ab74-82c19e872d1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62818878cc137ee4fa502ff1fa6585fc951df9a93bda5063b8864210aa256eec
Date: Sat, 19 Feb 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645287084
