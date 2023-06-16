Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512871113
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 13:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A9AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 13:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686922748;
	bh=yntckJ4waIyIb1pzeMcVDjgsgYESP50fF65IVr57QEA=;
	h=To:Subject:From:Date:From;
	b=Nia3pjYCHs5Hj66wK6iaxnD5MEAxgtx55xxvXFjrW+uNmwgkQfcFjdAxFREl2T4yR
	 VMNHLJ9Xls/idS9j/jW9JivjqQK04ImLIqdLJbkP6JqWTREAkaE8ZuzhUwifGvB3b7
	 mG5EM7Dv9xxy6T6I7zwpRB7gXwIAUzfNjJAyBlb9NJ90H3NCyAoFUkYyTm9PkFy44l
	 USdKic9+SHvgiYsfNTE6neV7npzZjcCy0GyUjdfbD+tNVKUJIvjxZEJD2z1c32twj0
	 XF2ZNldsPEggfX6+tohaLjsgSZqIPKY8cKS0jeXEaBWfpOXqETeAxoGW1UHpnGclrc
	 N1eYbC320btBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFCAEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 13:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168692274869.19275.12195626592404107262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e612233e7adb7d7204548c7f51162066171f2e309d0b1d22ac4c45771783d122
Date: Fri, 16 Jun 2023 13:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686922748
