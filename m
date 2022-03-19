Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94B87A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647661285;
	h=To:Subject:From:Message-Id:Date;
	bh=lF8FYwE3YFXPay7BJlSnJCFLjl6sEnW9+PqnOBjHres=;
	b=SvFwey2cz36DrEH2VtGBNLNevNWgM3tRqpNy4Swb9Lw9YKyocs24tExX0I1PS0MI
	la5z4qnjwIzsVqVq3m1q9Ki0ikcpbtT2yxPBA3GSadP0btz1756w1Cc2Idz6S7rXHop
	Q15WUXLBINTCyRohiZ333wD02MmMVTtxWXoTNSVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647661285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lF8FYwE3YFXPay7BJlSnJCFLjl6sEnW9+PqnOBjHres=;
	b=dIlFyDsNPa7dA78vTwMqdntTihqPG2UEW7zwSR6KKjRcfQYvFtZK85T/1SdxMxEp
	nOJGMb/UtADKyJkqP/7UeDevUTLmoK045boUb4DOOjuwd32+RtjYGc9XpxxWD/dSDtY
	9InOdQd+2JUPjgtFTZB4MEBJRtPiy+zR0j7XomQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa043ff24-337e3b03-8505-41ab-9f4b-1b46dc186596-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e4ec65380a06dd33cc5e15459989bfffbf4d5797e4846ce0250c81071e9d732
Date: Sat, 19 Mar 2022 03:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647661284
