Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C5829AC
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 20:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20A79C433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 20:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675110786;
	bh=8le/+JQyoLK8yTLN4D3oYsNe/rkj4echgn4PDyd8t0k=;
	h=To:Subject:From:Date:From;
	b=pOyjBfaQjm08XkKgoKN5V6qinKJzf2TZ2xjYGxMg7JETI14N4Io8nztR8OC5Fh6pS
	 6Wtvzo+sbvdZzdLNRkC3n7DBy8qG38zutFCv2W2bdgY266eOXn56PLXwmd8hJ+osVy
	 /xt5905R2lZk8tRYCFVQKnRqcF58Y02LMimQxWg4FjdFVdb3ChUn5+7S/Hxv6OmS4F
	 ls01gS4LAsoTPBD7ujnQ8nWCMT/nP03IyaIQe5sdJFy5QMMF+5JSiDICxQot6j8Jcq
	 QV8/zaUHpFQVUHEGaKVv2z/IO85DxL3afF3pfZ2PRWeHIXi1eN5vqrjVNzCVi3Zrm4
	 4T0ljM4ssfJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBE20C636CD
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 20:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167511078594.20405.13332661045377779706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0cc2e5a49d368f098475ffc7f50136e5e3861ae5e7269a5eb7536a069a38f0
Date: Mon, 30 Jan 2023 20:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675110785
