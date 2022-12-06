Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F422F22
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702C9C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670369454;
	bh=+PHXZSYKZQURW7AYtWi3gc7upWVVgQv14+GatraQ3Ds=;
	h=To:Subject:From:Date:From;
	b=lbugYrXqED8tGpybm3JSafQN9p1pkgTdaxpyiMLDGX2eZK812fy/tF6orUOSWoRFo
	 QN5yfUGPbdG7cszXYl+tlV1RMFRoQ7aa0LMVtjLOoZATno5PnszN0/StAOS4JEfD1y
	 vBhjsAx8YJvbSRzyHYj6erEEXRHUUNXALeKv91RPkWUgqCG9sFAqp7UZfcoAvoglxX
	 xGrUEmydlmj+g6H80i+mw8LYSH3Wi+uXjwiSo3zUVce69+eWdrem/aVEYef4T6gCaz
	 Nvm9i5q5iodEVD0w7xdgXpG6iwfhlYhQ9zdF07+zrBrC9RuRhvQ9XQqZfYUeGzVqBq
	 ECPnsdFZ2FbTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52536C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036945432.17403.11466724754008932416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a626ec835c5a29059dc4e7899cb0ba58eb7c0d86851e34eecd96f5338cb94e7
Date: Tue, 06 Dec 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670369454
