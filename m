Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1C53217
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645166485;
	h=To:Subject:From:Message-Id:Date;
	bh=PhAS6mpDwKgr1WbIok+E4/4tpk2ikvqHOgsb1h8nHFI=;
	b=P3iO30Ow/QuIRA1oxBqh+MMjntHQb/Ppaa/tM0zbESkMFLVOalQ3eijimKlutGb5
	LHwxzu96rSl+n+m8Ma2OowB+DP14dzcYH9X2IMwe09iStkIWBN8XNROEo9L6GNUfJpD
	Pnmn3JoHyvB5zgaJyOOfogm/ybJXRBSugmidjYbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645166485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PhAS6mpDwKgr1WbIok+E4/4tpk2ikvqHOgsb1h8nHFI=;
	b=GVkO/0sBQwXYJeyWJrADqueQhdEgZ5Xctnalv0Q5b8xbrYRBHhJcr0RWLYEbltkf
	8d0cZgA2lJEinAJ0xX5TcBt6Jl55mcaq6mfo62yG+3bTRvez4oxMgun81m82KHgjNXA
	DaIKNbvP/y3oKxm68u5Memax2d9se8bzXk8VoOYs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b905d3e-2e6d4fb2-a180-4d83-81e8-61ab863037ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fd0baee6e94a26df9e87855427cc500bba8d38d8c143637b9da7265f456f0fe
Date: Fri, 18 Feb 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645166484
