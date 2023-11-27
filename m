Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E2C34CE0
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N22lq9jL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77227C433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701101296;
	bh=Lv/4FAN3XT8lEB4AGo83lBDuolJaHdZgCV1eLoZruWs=;
	h=To:Subject:From:Date:From;
	b=N22lq9jLKsGbrVxvIYna1z+2BYipVEphAV6EJu6Uky3BGA0HiA63t5qfCCPFcq/Yg
	 GL+47gOwVi5f/pQP/TT7NKfSRaNkfG4+rMEHyr4yhkLQ+g8DGZiHpb2uzKame9l0Vr
	 APPsqUjR0pa1Uwa+M1TeUG4j6EJmawka+p3DfWUyhURm+Q/E7iEYcHp/dzd89kZRjg
	 OG19y0wuAjyot1Ym6kfCPdOB8yUEUyoGOkUob4Nq4NVdCF9hJpyjsz3Gb/XzpC++Gg
	 PKyK1PDUtq81od9sK+O0A83A2cdI2cx7UnTVFmdcJJDchl4V+hWuuXCJgy+f5dzZmf
	 M8WCgESrVQA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8CFC4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170110129638.32716.16970898503456044320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f12b2b28b8049da5a9d7b9540c6b0dd63ab39cdeb523d9547b9505a23a90ab
Date: Mon, 27 Nov 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701101296
