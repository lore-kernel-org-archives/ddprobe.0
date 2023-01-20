Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2D6BD2F
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1984FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674199926;
	bh=Ib7qql5zsP5yeRwSdMRQ7zN+EHs5YQ3cQJJSiTM6dz8=;
	h=To:Subject:From:Date:From;
	b=s0Cb4WnqNruBdT0hV3el35KlBEYfeHew2K5nZWpYYxSf6yq4qh3OEyABnXyXd4U+H
	 Al5kR9tDIJrxUg1SslTM1YKWz/3FcrVeRTCw0wRUrfUZtW6ojcD+DYLsBhs/wvoTge
	 q1mgvc8/BW7ucY2znG96cOwf0GeKSjv+vnfTf0UrXQb0k+73qB3ZVB6qZ4bil2D4fW
	 0K0qSvinT3NaWQqTbTBJHaPCoRe/tqMhNMCZGUwTVaustox8ZDqacy3P9OkpqCADuP
	 u9COD0hreZs2Xns/PDGURpJSnOnkZO9HaL8CjehKko0AXl93kWV/OnwPSBfymm93iH
	 KWURK3JCkptRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEA13C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419992587.21412.13219772868895472585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81de9e381d6dfb9e6e87fd1db69d212746ef217c9c59b2778e550b974888b598
Date: Fri, 20 Jan 2023 07:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674199925
