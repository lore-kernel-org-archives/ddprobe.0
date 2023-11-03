Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007EC1C680
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDVLBn4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A392C433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699026496;
	bh=GVeK7ew2wFQ6CsmOagjWTJchfs2JXJ65wl0YMA80+I4=;
	h=To:Subject:From:Date:From;
	b=uDVLBn4mH0hTihIAlkpRvUYVZ3VJJmoNDsqAMsgv3DLmk5HEfr4chup9epKh+X0XH
	 2+9vg5KuXQP0pMi6aoOm2GCZPXxBpbvyjAMQN/0GQrbYJD+p9kvyIvzeS/98RQYA+T
	 oW4Os+1gXn/W5bIkb2KDtqYhnxwQt4oyatVbId1DP/1nmGJYaaomD4blS0KYAfmPjt
	 DQMgEStapcuoJOlBw3XWWbfbO9a6X6geQ0CNhNaJVL58qYHy/OCQDwQGE3Ip1pYXUp
	 OyrN/vwWUv/Rpb3qv2pAeNN5XZ8+QuVvIl/iZh6CO7Tjwnqtl7IVndMQjSkPtn+byY
	 +iu8NE0yYl9mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA03C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169902649638.17584.11279978259355848900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd8aab57f275b9d1f8f4f054016ea31591e36005004a148a8c6bbd0d12c3754
Date: Fri, 03 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699026496
