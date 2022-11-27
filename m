Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F4C256E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7148FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669547454;
	bh=0DlLnoT314r4V0RFcTiU05LXcIv1yon2aFmCIqgYXrE=;
	h=To:Subject:From:Date:From;
	b=BZ0LHeI6YNXcAsQnuc/AvTwIw9YIujB8xGqiImbbRbPOGtgKac/xxaMPG2tcUHTvP
	 oGBPR6rcYKkXD8Ur0VRuIpbrBQdvgJwZJGnIqR6Vco2fMBHdGRv8TNWfJTPtEeBpo2
	 Fp43qDFR1QCx6qWlgXTKHRBQwtQO3NudENox1jlER34FiLAiGMfEWNUp/wSNlHEA/d
	 AOUUrKE7Y7w2S4QZQBas5rfVdDQ3iPTO1WpDJSl1YgztxrXSmjGgYxo4XxW1pqH7jH
	 7tvbo7ZNc3TBEBDo7BiH7TNs3TbVRB6ftGLzB/veZH3h9W2qMG9XoI6fSn2ZWAL3Bv
	 LL/sS7qaeaEdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BD7C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954745432.31704.8634444719284735867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab209fec86548148c70c3f8f0dbd3b7eed6fa6fa02d5749129952c60b5c7fdff
Date: Sun, 27 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669547454
