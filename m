Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582EE1115
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB/MTC2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E5AC433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696816028;
	bh=7Oi6qm/HBHmmn90dpOHLql9elRsB3Cl002iGxKpZDg4=;
	h=To:Subject:From:Date:From;
	b=GB/MTC2HyTDFaRjzfVKfaQ83YcbUWay6+p4TJVKrNByuQOwj2C4kjLmFZZTSV6fEW
	 Fz+ySIUH7C09LlvtwWvp1zt6k/Wi/glrq89U8kuRSyBxvMvumBogYCahPfdd2/jjq9
	 SAvKOzP4nqTH3nzBkZY3EySOVlZtgEHoOTu0DFDD0giFdL3GIOphIxK0DILAtxW6fp
	 zoTAOzsUMtQak5o3meSnqCwlOkS9NYQpo428YiikTlyFZdgWPm9Xb5SMMuUVJTQMME
	 GusR9FUPmON07K2ntBjsTxEme1l9gI+R0FzqBtz54+NFdnwh5oRj0HB9UDEN5SinVN
	 adFwIWF0nUwZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA422E95A8F
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169681602869.12990.4580963309879463722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de8fdf59b33553af5ff43607fe295df8c51cf1f564841034ccbf67de8fad519
Date: Mon, 09 Oct 2023 01:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696816028
