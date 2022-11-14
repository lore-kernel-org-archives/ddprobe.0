Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1054847C
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1B3C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668456654;
	bh=vlZ+8Z0rJ6bgLy19yjewWBnTR4KSgenxjatXB6IpUYA=;
	h=To:Subject:From:Date:From;
	b=bUUExsI/eGcCD66hz5rpvKZUnLGjGcYbov4mHMkJ2WR5hOkTrimSoKqbC4Tr7i+rG
	 bTgfGG2sg/LWuf0oYLHCwoL8d0z3A5qvWZ3p3M9h66ovConTc1TlNS452TrXfB6exF
	 uU2rtF2pXqfgXYOdrQMAA/rqkq2LBXYkXfeNk9c9+fZIzn7LLcB3ZOjtOlJrLcoJGo
	 t6NUZTOtUfRkHruy/pet3gExnBZvawm2W4EcQBFPjZzwhX0iyz0HPDNWnmiYw0KqpC
	 S5tDJqRMp5uqBAMj+kAPuFegRb3GHKwaUqecYXnsoxHgkuin/PhxNkVX5fpztdsfHJ
	 2ra+6Gy904AnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DAAC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166845665439.16285.17267527249637244077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f69d6c6c5eb3e4e12a1dc51fe130bc5fa60f3ddbaffb32186acd2ef0ed982be
Date: Mon, 14 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668456654
