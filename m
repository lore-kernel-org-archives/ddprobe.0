Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BFBA21
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 04:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14D37C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 04:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679976186;
	bh=9+tT8tqPnCLpDH0H7rXq1ROcRpSt/MtSW/MJxG2WO9o=;
	h=To:Subject:From:Date:From;
	b=srE8uvJrYG+pwa1qucSPX5u4WYeW+1B2usg8tVOKtmIjiZ1S/aB/66YTxhDvIasb5
	 xyFkAlV6V5ZyFOoHrhMxYnLArTB8MyIQBBKh3URuBBh9rPMvzT/Mc7n3F3RcdTovTa
	 nbRLxtbgrACHuJ1ot5UkFJKlzR9fnJ5CND5db0mOjUKs2hS8bKbAfW+0ZalJcmqlft
	 9EkSlotRwcqj5CyLjc8CGGTLpWsi0sK9x+eCd+5u3ITgmkl3koMelNv9m2Bl8nHC5v
	 ojNQWkXQL+CKni1oJHXhyQVVz54QUW5tE1sebmk9HcOU9F1pUDGY6pFekdP6ClPSmJ
	 X2/QsUzbjVHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE9E1C76195
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 04:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167997618583.23800.12961864016644954235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3509876d9a1b6764fe414bf2772baee95413772756346b90d38fb59c50a49159
Date: Tue, 28 Mar 2023 04:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679976185
