Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35356106
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C625C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668607254;
	bh=ClNRUvIsMx9lnBFYtNf9MPkSRiJJrE66sS1tJDJvh5g=;
	h=To:Subject:From:Date:From;
	b=pwMmsG80ZeUYTAKmbfZoQfI54a+WV8DtC+UV/f4v5iq45XVG0zmDjhMMi3U5fPtQa
	 3mURRhYshNRWsQbLobhKY+EwctNvecrCfAzar0v9D65r51V6EVPvhQdMc1C6eRNw9+
	 lVqq0Pwza2GlUI/WHpKbo+M0kKXlNoghpfLZF2OG4BK02uu02FpfhSig0wF4kQoRWe
	 ClRLaKPLtk2z9uB40KkUPzNtu/lwW8+dVxYcEVSDOYvLJuFqh8kiAEiNzzPlY9eMWF
	 QhkGja5G1MWJUxxi0KFXE2WF3er7P05Fj43EiZpMkrnRYR4DIn4cRbZbzUcIordrRO
	 CI9SwBq6nBxXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55363C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860725434.17791.4520472655385488395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f5a245ecaeb70e81028fff2ddc523b5e1ddd5314279736bbd13586aa76ed41
Date: Wed, 16 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668607254
