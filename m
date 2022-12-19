Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D095E7E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81600C433F0
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671417087;
	bh=R7b1z6QkbWBTvwilO5BaRzlauj3f1pgIySRPH6FZ44s=;
	h=To:Subject:From:Date:From;
	b=IxtThvRjonUAOMoMz3+B9KNKohIEcfVZ6KDaNTy0+mXnEbhoiPecREbXCn0qTKlp0
	 YQbB1MeXECQX83qwhORWMe4ZBJ1YSdsKDCqsh+pv2q98IEh6ENmHZtByDgvPQKccR1
	 UvdQYvb33DrYL85ZPB3hMB+0Ajjg1DV4Dyv1i+U5QaRMQoa/XYFk85hOzwymEq9eoO
	 5Y34x0sE271MmN8vV0fuAY0tStVWawMoT27FJzuKH5eYj7jBNwUNNEP88JhpPwEcdl
	 wQv0G+ady9yP4ywkk80HXJZsS1ot7exVhcTBR13wVMJqTjk+dilyUjbRtZjewlzVyP
	 Pv813lyh/9BoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C7AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141708739.14013.13867397455327149838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479a15c889f15fe0ab8634aa72707865825d57c05dad076a1bf3fb7542bbfe69
Date: Mon, 19 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671417087
