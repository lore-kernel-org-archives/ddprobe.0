Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6798F8C19
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 22:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68EEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 22:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691877788;
	bh=lVWRhJQBrqYiSQN9r5z5B3IbFkWyecOmgZI6ANS8uZU=;
	h=To:Subject:From:Date:From;
	b=MDP4yQ/Cyrc3IC2+r10GTtOcXzzJUwu0ur+9qbQNEUbZeEVJxQbOilNPn/L994rXI
	 d6IhQobWc5GkXjPwzkhr8Q87CwJ0gD3cCGHZwl7YH1dxsQCR6UbnbAhCdpIuy788d7
	 q6mzb7kUkk0PX95NrMZ+HYY3XpF5i0JUbqUOYzAD7kLI2P3KYFV90sv2E0D0THR2xe
	 MDtIUnfQZTjtF+seSjbO61uQ1Y2SVlEHrAOrOqCFHOyhU4akexRwRetQNQ+LGc4+Bq
	 1ej6Prco6NtyF7OJIKSOrPjxWCIdx5MOZaik7CHVC2NKz4v7v8uXXYZsDVj2W7Tgei
	 I4INQqlN85R/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C34C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 22:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169187778865.4217.1809270702440328388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d761d0e3e775e0ee87acd5d1a82898a72cdf3253ad519498b977921fccd9a09
Date: Sat, 12 Aug 2023 22:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691877788
