Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522314C60
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 19:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFEBFC43442
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 19:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681674426;
	bh=ky+IPUO4IKcKK2aH3FfOuUqm64JFB8HbskmoWYqjAmU=;
	h=To:Subject:From:Date:From;
	b=cZzrZPNs6xNBtIy/ghO0n/QAEVnlsITOnRQU9OjDSzJ9JDLIZcUGBz/1LcNp+5kWG
	 8XJ2pATchvG9s0fBcIEyNOj9rc+8s9Zu72JAVr0JvAuyo4F3vH0D4nghLR594x6fwy
	 HgRBh+h5LBTNTB8i8QOMV7z5WYrgQJKf58aofUTsLv0pMF1oaO2KK9uovz1SGgYkkc
	 up0Rah7G3r6KGyby3kFi6uk3jlxmBZzlG4GCiUxso0kYc4gDwsHXZJdmI5OJdq58mx
	 aOmMEl1seissgH1EKf/tGSYhu2Wn+lFy0WWjVTID7mo09qT41lHh5Bisw9egMQI00d
	 RZD1v8XhAL6WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9548C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 19:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168167442581.9302.3590722828065200184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca34d32315ba56c6131fdc56601e8e65928c8b216efe328a9bdb6f4ccdd5c8a
Date: Sun, 16 Apr 2023 19:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681674425
