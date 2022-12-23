Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F5A8476
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89585C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671800487;
	bh=k7FmmPmYEIh+G61ZCnL5HOeR/TM1sA3WWEzuxn2NV1Y=;
	h=To:Subject:From:Date:From;
	b=kSbBOdJb5zUKQjDWDmdHSV9J5M+JA+a9GXKjZsjH2jDukkP/JvfII69FGRvYkynaY
	 pKgyGs9e5oUW0BiWd0Moyi45SGj6pI7MyIUooPSVSaJGxsA0ZkFkGWzlZ7BGXoMGG5
	 07rxWFMtcqoHscMyKbdkg0pcK5w1ixGWudMgoyn932ZhxXUuzYeBmWdVHO9SnlAkt+
	 fmme30QOKvax96BNn+xyZnZJaulbQTKbdT7CbQI8WCMRdzv3/eipmVx5NFrG76FOku
	 9WuKiwL0UvL8GrSa7TSAZbwgmOP5TDodMvoMgSfJfNbzvha47EzeXWL3X9+bRcsEjT
	 fEXR6KnLiuQhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69333C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180048742.30804.15990649518642562547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b95b37e71edb7d49e09b0a02ae7efc29c3cc56da35e9e8c8e9b86021eb3f0a8
Date: Fri, 23 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671800487
