Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D181F33C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 683C8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669566054;
	bh=MMd6n9FtvhJ3SrNcXmiA0aYTlv8y7rk9+enioID7XXo=;
	h=To:Subject:From:Date:From;
	b=V7OP3D2tN7LOEHFe66q9sbL2YANle5swPDyBhe43yDPdrtW/GCvlbbNUtLTjEdVQg
	 KHHWrGWZ/kF1lxM8lkFPNw8iWmKvRxKtgwDE5VmmtU7kaxQjcqkDy4Ncq8GGV0cYIh
	 GEx1oqLo8Htvm97UO3L7Gtnk17B3sIsyrf2kK8YxmjAqj8h7qsIJ+FqOMIVd3JiZKV
	 xnvZJHXkTAMNk8JHBKbQtsnrr+yk8e/zKYujz7VH6bDDwbayExua6inW9gJgoxVKCD
	 I8bIkjkS7c+NdyduMEz9WK4V6YrU8kL/YfEuHaBppAAzgCEEWD8GvWtbjD1EpHIEpl
	 0dMGSuHVDRxmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7BBC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956605431.20740.16071590058102018522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 533902bc15175a726ddf8641fd9f985c8a65759a648429ae455ceecbf6f79dd0
Date: Sun, 27 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669566054
