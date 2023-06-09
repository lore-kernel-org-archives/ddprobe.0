Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DA7CA943
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 23:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E7FC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686353885;
	bh=vfiFHAUFB49v6XLBUJAdpSMd/ge4OplL/lQJHA88Ujo=;
	h=To:Subject:From:Date:From;
	b=bLyA7VNTnNXohHRJV+htxdoRJZsE7sQr4LKkmaM1/kpJhDJnmqxhrBOOD35YqGS5b
	 ohSH4Ef6Im/sLqMMkdYQpYAvRMegIj02gbGGqkIRnlsosv/HCmH7HQoEPzLTH4lM5M
	 6bB7/JBFjRZvG+BMfk4Sfkh8W5EwYUp68bLYKWMetObxxVKEVbLx8vTa6ry9r2jote
	 Z2u9EsUf1dRlBBH0oUjFYthh2bl29japfzPx/oyzOutjnxk1onX78re31LHVjCwQf1
	 bBtom/rXRl4U8DFWJtORR63WIq9vFIajIOusAcp38MEbp6tsQapvo3QCtidLV7yf1T
	 eB1tFCxJ139/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EC7C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 23:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168635388575.9359.5793257314999628194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a39d65040eadb856407e49511684a065db061c55da74b161a706884e4705afc
Date: Fri, 09 Jun 2023 23:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686353885
