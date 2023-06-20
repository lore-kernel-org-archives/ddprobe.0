Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D04518AE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67EFC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687293128;
	bh=W3k6JYjwyspSsqHsjOGp3qNgEPUAkBSs9R7hTm7c6gk=;
	h=To:Subject:From:Date:From;
	b=a/HSRGTvnINH0S9xj1n8XZnuI2xV3LufURbHvAmVyb1fVchIq58x+mvKBKb3JRRpH
	 3Gu2uKgzsvre/tsWtIF38LOg1XIG3SsSv+r7h8PckZ9WHD7DsUcDJ6UhHcitts8orv
	 BOGAtW8gDzS9biuaVKgx3RrSeL0rQGKqa76td+q/2izGnf1ELnlsrq60+n8+/H4+iO
	 +qltuowsLebf3gSKB2Mw//k+ke/rHVfyV6OELFjq5yYafCxAdbQoYciyznH/pS8hcY
	 tOEYuY3DlaIMowhnt94kyQTSWSlCp1EBb/NVOWGw38dtvk8FaO6LDWcM91Rc6L8Wn7
	 TqqRTTkqIY25Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6850EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 20:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168729312866.19759.5248386967526459623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3357be9e4a542f555acce9188e9ede66ca7d7a9e957cd64bac92ab62c31946
Date: Tue, 20 Jun 2023 20:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687293128
