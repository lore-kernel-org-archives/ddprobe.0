Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1202A9475
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhIYdH3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE5CC433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699180096;
	bh=CgGl7G6koOsFpJP3KOxRx/n17AgebavurpJoF9vDcIQ=;
	h=To:Subject:From:Date:From;
	b=NhIYdH3pvLP4FGgplgdKt9uSFkFbCmMtMqWVyOzh8MBKJHaYZmN/k/1dItYJEgRje
	 WJMy/LUfDEe3hw4vsgwQzSpSO8ZO/mne3JTD/KuC4cYewOBdAnKkPjHYnReQebv4Fj
	 3dNtvQ5JyewibFUIAlvQKz3RHsWmA+8Lj8CcCL2EcA/kRWz8//7bOoAU5XolQXvL8W
	 aIJO1BsDdIAb50ljkQW50ju5HL5SJFPFjxb0pBi95G3k7UrkXKIHmqeb+VWZm9AZQ2
	 TMM/ML9ymgrcVoW9iJ2PjwDbqlF1ht9dFTr6DZ5zYG7NHbpR8DLro6BamelsTjyQCv
	 1iYQvyzAyz5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78ED9C4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169918009644.22683.4859752694524986120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460088f83a25ff03064b956d83a59f1aafd85aa2174fd364857e8be5e7554e40
Date: Sun, 05 Nov 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699180096
