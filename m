Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959EC161
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 04:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C0FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 04:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689482468;
	bh=API1nBgXDSYbiKNCn+n+0ugRizuyRltH7Ze77bbfJD8=;
	h=To:Subject:From:Date:From;
	b=N1rph6KH2PJ18qW8IP5OPpnni+YQawRkC2EEjxZruMWX1tSt/naZQHyxycgii7rnt
	 H/h13Sqv6Up0jbuoz93TsX8fzKzO0gJ65qo7u2Pz4cpgjnj2nw+D3HUYEOLqZzQc9W
	 /izSFpTHStjpFIGptDTLwdfzC0ixqNQq08A/j4uK2bBp5kfGsaCnqRg/ehMyOXvYb2
	 gqJTnE1U/ZxmtDq5Wh+/D4UtHn9D7U5LzMb1AY8uZJxJtiDD4t/1zkTapD44XMfnfH
	 OF1JO8/yYoCbAXLiJyMS9oKy8Vp3IdM52zqBkdD+I8ykG+L1jgWzKj6CQOzCC/5KSx
	 Pbowpt/TRNrfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7942EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 04:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168948246878.11098.10282756718465990120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b10af44bb01ce96a8e8bec88eb6d504b725bc003261d200b9647707d4431e3
Date: Sun, 16 Jul 2023 04:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689482468
