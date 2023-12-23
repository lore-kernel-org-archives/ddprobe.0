Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EAE17992
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hr7BjgmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A1ABC433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703370496;
	bh=6mD9yt34mHaKzJtphJgFLxoi4HHxlZ28Aao6mbz5Pt8=;
	h=To:Subject:From:Date:From;
	b=Hr7BjgmX5btnAgzPjdwqXoedNJe0NPfd29MnOuIWDhqdlC4GlHaVNxzcXEsPx+K28
	 LRlURvNW6kAtCPLK6QoWlhINVz3CPOHGaAchp6aRHQZrt7kN+2rf9bf5DyfKH/gM/k
	 76PxzSErHoOAYwgRe6P9PUHEPS6FMP2oiH+WKfYQkIhetcK9GjiEA9Xzo//Z6bZdy2
	 j12IEtQFmo7IYjUdmkpGadC/7S0gu/Eb+9rVONToh/PMIw0KYsIB+jOkGZHHGp0wCp
	 5vBRurNwp5W6TzE0f6CPXcpsDKjDaHtFQ6qzvw8zakJefvRiIbkn1XiYAMAMmZWygn
	 LUOFvu5+IbzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F94C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170337049638.16076.17074652111321709642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8246736e3776ea141077fbae54d06decae876f9f40c1a5f27e1410387fa28436
Date: Sat, 23 Dec 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703370496
