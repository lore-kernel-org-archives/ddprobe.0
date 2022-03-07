Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3008367A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646625085;
	h=To:Subject:From:Message-Id:Date;
	bh=R7On0n+hdnrhlGhHAKeuLwTZa+3Fed6HC4W5ruF/cqI=;
	b=SHusI+oRCivLgzZ7b4YJsGfM+NVgx9yo9glImigyGx+a5DNzyAkSbYQYM3/M+LoF
	lT6bqXEe/FnamII0iSZlD+f3q9bHpcsX+fXaZkY5s/3Pt4ZHS6F/xoTDO7C6xcLPEkQ
	NqAfN/9uB9it3IbVM1Ph3AesFSLP1WMc/yK4jJZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646625085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7On0n+hdnrhlGhHAKeuLwTZa+3Fed6HC4W5ruF/cqI=;
	b=gkU7456kZc4C0ylOj9/k3RSoujuLNrJOrVgZoHF4bj1yBzP08umuDCW9tFYD6sdL
	r1gTcVwOHUlIFSPJcxTd/5gpyF1sOiJbpru5Nx0Bb7DHJ7yuye2HNWBPSJ37XufqbDD
	Za48wWN66lZJ9jZBgBb8xR+me+qBAdr1oZZ0nZa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6280d54b-9b3b188e-5d62-4a75-acf1-4786221206b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3537d0189d2772cf849c02e262e2b3c48a2a6dda93c404fadf9f324911fe770c
Date: Mon, 7 Mar 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646625084
