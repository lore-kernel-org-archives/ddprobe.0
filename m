Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF3C3032E
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMjBzPk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FACDC433CA
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699570696;
	bh=C7e8udRSjhbbkpDe+evj6QSKU2cHD4iOchLEHgIPOq0=;
	h=To:Subject:From:Date:From;
	b=eMjBzPk8etDQyVv053cFUoiJHDfZcbwmr34By+LQyB6ovHqEhPQ34oHKXUWI3rHph
	 AiF14Ggsi2MWwg2zJXToDoLscLh/6kWN0xA8PMG8b2+GaBjgIO1HPy9KJLGASwMt//
	 W5CFX6K9QADt7fnZXBGNHERt/JH4KCvcDnwWeoh0D7p5R3qPgMxXm7FNY2gSVr686J
	 hOwuWONh+Pr7aXc1mrsiHMpq70LPQfvbbZzCxm+Z5yVQcW+vbfj1R/QiKtAueX5CLt
	 eLxxp0j5KT72qGtcLN+S1aGEzpIJBFkO29MxnsMQzby1bZamiuODpnlzrfgDplXjRd
	 3Aox2f/O/w7zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6833FC4167B
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169957069641.24403.17792939621444093782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376f139f3343023cb2b66b40cb7a210f2952a36a2299c80d6be7aab0c8b9e9da
Date: Thu, 09 Nov 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699570696
