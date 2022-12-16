Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBD2634
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E57FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671177087;
	bh=dDjtYJAY0GcSUEnhkAAwobnCEwEikE+qUbCFpMgqJnE=;
	h=To:Subject:From:Date:From;
	b=ncwHY6LkaZQKJnhIwz6Uxm5ZtrFRan7w3bn5FNUuJqqp+mBxi0lstQNjMuXeW+7VO
	 R7TkevxxQM6PVVshKJKrplcjxWjWWV+s0eBH7OFUm9J3GXROt33squY2cayfcqhLfs
	 1ISgDoI2X9rkRElrozGVWVyoJigi+EGOUKgYFSmBbpSV/y9OhYeCyiY1o4DDjmwPCj
	 6zujuneO66vlZEE38vnmnBWNPJFzfhaF2MXHb/JG+SCurP/xxNKtAF9222EFYV8ZQ3
	 a12WThbfWmfvzMB1co8QvQ3wG4Pe9JkKq/94v4rlRjaZtsM8YWTm5d3PHjOx4acb7d
	 KwZuNVmMUeXxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632D4C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117708739.5250.7094374932777640840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7ed090db791fa9add4e8711eb2c8d9ae5c39a72f44e1dc8859127911a5d16d
Date: Fri, 16 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671177087
