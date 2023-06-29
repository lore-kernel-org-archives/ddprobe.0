Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94012FBF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 21:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08174C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 21:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688075589;
	bh=zIajDM5Vh3jhsYPzfA2FOEYTypCOiT+oKAp8HGqo6nk=;
	h=To:Subject:From:Date:From;
	b=TOUGLAoKMBuH6IYtrSLftSopPHPHk0qwl50slPcOye8MLsXIguAOcoFJQPLNeO4OR
	 IksHN5KfOK74+lBQVwqCbC0hUXwT8d74CM94WsrZXqgFnc5UE273J+G2hDTqnuvH4M
	 B79IgqWrTWIl2k5rMRjOlJmPMuotAL2USkqAEyh2HZT6Rtt7bRN2iuFCjlBKJT8WOD
	 EdH8M9ZXASqCKHo/aG3+58Zud2GEdql8vfMxGiLbxcrhpybFgnwKjNElW7nMb8PhW2
	 6iM+qGDVZFfBUv9rPdb5v7yNlmJ1I/TgWi77JVdx3V0dab5ChgP3gN8uCOqmW+uNN2
	 ljaq+xddPpbpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD667C0015E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168807558889.14921.7740700286237941348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6860963dca80522b58ed748d214f8372a860abf1358b3561e360f6e5bf8697ec
Date: Thu, 29 Jun 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688075588
