Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407A6361
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 01:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF203C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 01:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674264725;
	bh=JDdI8RtNkjd+FELrirJZ3YcYWmDtRGQAHLH3BgVD4DQ=;
	h=To:Subject:From:Date:From;
	b=WmxAKo8JQyGfkkDRa+vSi2R1yIUSBqdjZN08AMxIUS9847PoJhPxeXnBK3KGiT/x6
	 5ZVMK1Hb0znkDSJULECm7I+Dly77jFHHlhGxff9BqwT50Ift38S7FbemP6VLOKBTsN
	 TT22I89tbPd4LCSEOpzvYuVi9iePJpF6a/iVEkyvnGDku9kCMaF9MnbxHEmoMaVpYr
	 y7Cmn73r27buDGC6ASUsjSYQJj11Blm/xBpTZ7lzljeyR9L/emUDfNTLftNrW4cS94
	 ZkSV3I35dpPP7SNQityB/gJ2A/B1qgOYutxm5WjxRmDlssAZFZVbYFYa7NDvz6u0Ek
	 HdlzTgvb+kUmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B00C05027
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 01:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167426472573.18148.12682379034821940794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d036f17a7d1ed26ef611ce985f7d1475af1c20fe200bc7b7b62d1abb202bc6b6
Date: Sat, 21 Jan 2023 01:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674264725
