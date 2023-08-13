Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C01A42
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 02:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0883C433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 02:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691893988;
	bh=v/RlSdFwn5m6ZPJezIcQNxE1pTGSBrhq24CpljJm48s=;
	h=To:Subject:From:Date:From;
	b=B7tsh/dAnsLZ7LmYhSS7/FICVdPgNRh3svXY14yLrkaqBGKMd3rE8bvqL9O34N7Kv
	 etkpYjqJpMe3SQiWduMKoGJcMrVs4TMwO+Os5OIuvGSlBOtXGIYEXbGjKd5aXS6PHj
	 hIl8L8yB4VQz+D706ZP6/Zg7PguJ8JJbu9sZwBiT2xZ/01oRkJN2Y7vWwscWjpk46f
	 2NSHXL9ou5ptFy/ODpSAFRxQEBheGl0N00515sl3ouMgygvrIC6mOZbi+EPU3KahAD
	 bF11mFd0C4tIBpCojfXNYypVnwSWdWIBJ7+K6b5JHHoP5SA/jFAzGCKdUdhRP/mAv3
	 kq67lmfTVB8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A591CC001B0
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 02:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169189398865.22689.15263451938450527085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a95222285be4ff264817b18615af0fab918aef1fb527ef27519f36b035790a1
Date: Sun, 13 Aug 2023 02:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691893988
