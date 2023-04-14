Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E77C630
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F57C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681446065;
	bh=+se4zhN7JHXZvJFdzCiOCj1mZNFeJ+YNeR/zWkjoX3U=;
	h=To:Subject:From:Date:From;
	b=qtzIRMlMTnlD+8Az/2kpSZvfayp9kqy4yBb4Lp4MaPQjzf8/A0icxWzGN/WO1ZEv6
	 xjc2Mzl5IQ6y4iYxsimzpjZ+rYmzmSUIPjBVgVQ5DAEmeFRhewJ85j/ATFjEMXMFm/
	 tkyz9TwZZv9yRYlpOU7Ur+vKTVFCdiVLX0FsS6SMR0RbqBmqNtMKhHubxs9WOOthcp
	 QIWQ+1g8ss+BM85GMbr9YAVimnNaz6uMgCitmtDIAbodKbuIhqpDSeyQhDnj30TcHo
	 G8mFVnl7NSk06WoH0nfbBDdBajghLinN4b1sqxUgd0UGwBzpu+DoumrFl0DXTL9f0k
	 6tl82CCHGO9MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C650BC77B70
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168144606580.21977.10013592023217663721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f0d759f2b7fefb3fe586ff893bda9b46f4fbcdfe90959416637c75f096aca9
Date: Fri, 14 Apr 2023 04:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681446065
