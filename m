Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF86D23D2
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E588C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669630254;
	bh=bIyinHfpBy2nTaf+rw3YGx0wWh4ucLuDuh55TcEqbM4=;
	h=To:Subject:From:Date:From;
	b=ImVaoX7ITo8Z5pC8A4H+Y6UxNBRyFSZMpln7TKC7ZKpynhfXCo7OXSL362Lv7PueG
	 xsrbIAWlrM3M+093T4I2lCwZ9nu2ZRZ/gBQSI26UyaTkLSfTe7AmNEH5i+Msw4aC1T
	 8OvXSx4z5cLDootoQzI7hgMTRW7V4JQxChgJ1Il8bGlcXbx9vIhLpZVQ0veaaAaWDo
	 Th72K5ww0I8XqT6u7uzkLD7WY5v7X1lwDF0NUVkhEo4uiz2TAiRFl4bXO8vDjNt6d8
	 vhKHEV6xl1jR6fBz+f5j7UI3tls0CKmNdEWMffm4pyF7KNnL5fSVaq3FWKFW4TUFYl
	 gmxIdDFLXTjxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59E14C43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963025436.15592.15608975825804601299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d1b3e266120d7642473ae8dfb1129c984f8127ad6573be4018dbada986e4f6
Date: Mon, 28 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669630254
