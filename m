Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BD83D9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7675EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665683453;
	bh=KgvC7hu0RqMh3BPrFFc5o2MbmYKJ+MGcMvwPUEXqsJ4=;
	h=To:Subject:From:Date:From;
	b=ScY1cS7POt9YRBscGi8pNtuLsWRxOdljMm5DTOOvslDGNNO6xzGEMz9GZCJHLEMMf
	 eXrqrF87E+T/h/hfsY4vo/1W8+LrzGCnEIY/APr8bwstba7tmkhjX/vqgV+OIKV1ul
	 1acQWta48IYea0asglGfjcc8rlh8bWnzTPopobCT+dOFLTDsxfpiY4VF3cPg9WbPRn
	 KD/jeSHGScnxOYJOD+3pet/5zLACNwNuFM/JgmDv3ioK/fbf6T89cv3GQkZukj/Qgd
	 r8UHN31HL44XTI3c4wx8hvoBif9ZqashwMS8cLvjUBxD36nOWE4sDT0/NtzDlikx9o
	 jfosQmrspT4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58047C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568345335.14624.9429192889597675714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a5f54d0fa46099bca7f705f8934b428f2598e72560bf383f5d2b3c5ef05fac
Date: Thu, 13 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665683453
