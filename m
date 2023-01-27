Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF4110F2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6497C4339E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674792785;
	bh=T5ivtBQMcQT+qpboi2IETX79bb7iBfPz+fzSPB3d4Mw=;
	h=To:Subject:From:Date:From;
	b=QRx7iGDZysV0EhA4dFnnkjPdUJysTfyZjzdDrMo97nHw1eS7F8X9SXNZk3pH7gsAV
	 sCIh0tyD4fP/htAQq5mIq1PDJjzDgpPD9g1P2US31f80zFBqNruL+gT6drudAIwll+
	 6EsCy5bx3xOHTcAuv2sHjAK1G1KNlFmtHaHFgE/DxN7CNo+cuGk9eMF65Gw6oSoSp0
	 sea3X1ViU3TNlVtO2Wt2fh7HeSuFUQty7BjO4DU7Tzb+0sAA1Di2OT9virAytMZk51
	 nyvAaIwNVC/oohnBFN63/rywem1XuUL10OnYU6xRoGQ+xKhXaIP305SX4/fa+L5HXW
	 gKOymhB3JwLRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5B8C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167479278575.28931.6396654657981819596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b556ba447b027c7696a71ff168f207ec8a0cfb2e199e1d1d8a1ad6448701f1
Date: Fri, 27 Jan 2023 04:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674792785
