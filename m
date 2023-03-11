Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0A07B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 04:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0352CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 04:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678509906;
	bh=GkIZqHSR2V3odjNICS7pgKisjGxL7dB8CYt9xvKI6gU=;
	h=To:Subject:From:Date:From;
	b=mYgLyHPPiDdHJe+KEQ7YqkUdG5SSs4wBhJZWoaJkokdBHHjlBUzxf59UTaqyo5d75
	 B4JoH1+uqFBSNvGni2myIImziB+jOOz0046h9ry0GlxMfN595avWGoaMLE9bcUPkwW
	 gguES8r+b33kaRYbeDPGHbsdZWGeTzJF50LVw3qwSMspK3Hu7v31Jl0JodrHsKBfSn
	 M7C8cQ4zMDRaPpCI+YYyPx9OMus68rupqaXjJQ4ZaejHLv6Wk5TOljvh3Itp/p2e0x
	 KgsCeXPDEGwMG+DmoqveDuWXzIgeJqX/r+sO5GKiZ7D8Rujwz0YyXB49K2Ofj3i5XQ
	 wSoJ+nG2z7SRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7ED7C678D5
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 04:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167850990583.13592.14138273166622120266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21606a735b66e4f18e337069cfd7264a8e5dd0ef1479959209b289f5d9b819c0
Date: Sat, 11 Mar 2023 04:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678509905
