Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78444A94
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645196485;
	h=To:Subject:From:Message-Id:Date;
	bh=NbwntiKfM/rdIjW1UL2vzXmrurFFojs2qSIaTxAPRs0=;
	b=Tziizuh2RuXsWIWMq8IObwPJdw7+ipUexMslFAo3RcB+k1rcqggTDIUah8Q3yRKv
	ruyWQDKEq3cNeGv3SQYC7gO7PCgMb6I6r6eNr9f9OoUowvtq/wd55GeLjcfDa1LAT2F
	dtPnqqc1JUv8+0+z2noLsTq0ajfP9KhjjXYnQNoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645196485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NbwntiKfM/rdIjW1UL2vzXmrurFFojs2qSIaTxAPRs0=;
	b=DaLqfade18QkBj/yty+hjulTev+tSlHPvqa8XB/o/DKj0Z6jcVgOlW0uGTz0U4qZ
	spC7MEVpvVUiHoyOzsuZk9VozbMoakI5KHcGbLBqe5pJMIAntkTvf/bbVAtiOUBMHz+
	3Yu/fdSkqDf+0ThqlwmM+4Pdn5tL1JXdT+Jg4m7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0d5a20b5-8767ae67-a6c9-46b4-ac32-109e936a4e10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7d357901fd191d04b7298ad95bd2d0eaa5c19d8dd9d0746a14f0657eec4a08c
Date: Fri, 18 Feb 2022 15:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645196484
