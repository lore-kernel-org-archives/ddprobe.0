Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575EB4404
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660744252;
	h=To:Subject:From:Message-Id:Date;
	bh=8+/PiUjDTy5cizFGjLZn93UtJURAzhACDOJJhe+AHfU=;
	b=NzeLkMnO1+3iprwZP6j92C13c0nPr2TpR9Fm1QZuGMTXD434eCB3Rv2PPCnDPBya
	ccY5EvhGVkAg3Wbiiw7T3Y4I06xw5QDp+4j/KKr66RIPPJWkn4YKEQQ74bdbWhA+2wp
	5+ohaLMpqIAtdJd5pqhI5Vwmz0Kxh9WWxYSLd1WM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660744252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8+/PiUjDTy5cizFGjLZn93UtJURAzhACDOJJhe+AHfU=;
	b=YvZSphtHDPBgRSj2BIc5vPxUn9lcMG8Bb6SQAaBUSFJV9D1S7ltBacF5v4ree0M7
	ljL23EcGT/FJ0ilNuKXVSJE7Bw5zRRM1B102RZQcSLR0vQ7Sl/eSA/2fiNURtU2UkG3
	4Zx/4hck9s0M6s4tay4x3+qz0raTjHOCjcNRHly8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac123cc1-1cf1ad81-f3e3-4aff-b085-2260d239b7c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92d2f2212c6fc79ea2cc537bac472aaa4897e078695454b4d124cc42cdc6a83a
Date: Wed, 17 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660744252
