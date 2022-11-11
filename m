Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C861B63D
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750B0C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668142854;
	bh=7HedY2U9I10HtFjbR028y0luOGKbnsD04nS+jyG98ZY=;
	h=To:Subject:From:Date:From;
	b=nyTYXmctf62KlvfWPRCZDjIC8G4HJ51dZPnEvH5vzR5Fwy/sgzjUXf3mHbrlj+TWz
	 74AIEBhRvneI7QwDq21JMh8sUDwWXTTyhbfpKbvMucPzYuW9kSvEugOvGL2GSKTw1G
	 /f+5QkWcbcbVTbRB3mjCUIB+wsVH2WF9fvBF68mEjsmotIFPx5h34toYvdehrT6sQR
	 JsQ/rWhAQuxRl2SAlIOCRAxphCcpy176mHVN+af8d6DOGWh9mlOpFYcrW1Es8zU2zv
	 xKYuAbMDvxWmDXGAreLqivJEvy2OZ81S5psQTCz5x0OYHzqCGqV0jK7Lbj3cN4dAnE
	 Cd8fbfTBZdqyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5537DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166814285434.26957.4905162676946841981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860f80ce811ece8a46171a76c23fe1207edba6a6a1993b228f150483fd803b06
Date: Fri, 11 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668142854
