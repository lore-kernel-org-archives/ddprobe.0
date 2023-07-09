Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B196810F2
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 01:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F1FC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688866628;
	bh=7keO5+xDV237+12mgrOj4GmhFDAQDVhX7Gor+DRG4NE=;
	h=To:Subject:From:Date:From;
	b=HU+EPSqkPHmv8Jdprlz/JHHA2O0mmJhrbGHMBULJPomclXpFwXrISW6irsYiWCP3I
	 VdH0b7X6cEBX28GwBWh/3BBKTVFPgx2MuhhptRcpyx9kXmTeG5ox/OFl32qI0R6TJC
	 CuSi69vczKExtn3cFRytjxoN64ekqgZaWuFiKxPVGiB5OylosOYyKeTpHigeeQZg88
	 axVCrk/xQxlYtXPa9fhcOz0t5DJXKEhL4KJvG0blFiRB3+jYSEQCeaBvjLj/kjnQAh
	 KdWKny1rFaPS99HHKCp5QgUIK69Jkw2FByLIND0oBxFfjtlk9InFaj/SfOW1yaTRMr
	 xxhB9kDzibM/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86F3EB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168886662872.12336.10643016706658449265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2c5a7fd03d9c19f410c3b5099e385fb96c742ce2ca13082c19aef66e571a9c
Date: Sun, 09 Jul 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688866628
