Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468CD8C17
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 22:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF7DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 22:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678745825;
	bh=DFpeeu7J/rKiHlhRXUcNzaVUFRtkDQN4LBtGTWiM/no=;
	h=To:Subject:From:Date:From;
	b=aOHl43UyPxiucLHUGSAghVYKjeh/B0hevpdGPQxgYa3OZluw+rfa0AXADnZtzyZUN
	 mgy23OxyMINpg9PKds4ecKNo+kJU5BVzxnFo1DXjEBYStswTQm821VyWkFkAND3CrM
	 3lNotaHT9vBm+2NDZIf5wzG744WklulylVaMgOBh+EnR84XL0llUC/3dobRrgObJ+x
	 9PNEERYLyjAG5BrvJBfI9k3I9dMUluUiTAGJ600ktql6KD4FgAOoCgk8YYOgDZ5vJ2
	 r/sGRXhXwVgBMmSrqOHwME7a7iQlBQJ6nq2INi26Lyy2nREc69Irtt0FlgYw4e7RLd
	 Unw5xdSrn7k5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C170EC61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 22:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167874582577.16881.455547774883626669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab016b621d6683b20f12ac07b81c502a28edeb2269436a2f6123103e0498e55
Date: Mon, 13 Mar 2023 22:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678745825
