Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F141715BD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F002C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671829887;
	bh=eNaryB6tUmcqq1R8APiCkwBCUJ4I1fIJ+9tb9EgX3Nc=;
	h=To:Subject:From:Date:From;
	b=fV8MH3ZGniqTUqOz/FrA+cKccxoJS6T08DtKZgkifcfGSHDxiLd3Umpbv6rwVJE0g
	 bjURFqc4QleF1vIIR8cQ2MOayU2vwHXZsMoMzHU2g45OV6yJF+dGM3mES35CQQcxI1
	 7/jQOuclH48NvteLd2EM/NmxSGIlgEeOlQdTgUjcJpPAz6XY7+8TS/dVrWakCd6NRy
	 FpWlovNZHY2b6RDHeLSd/5jJNjZCO37u+hPiHF1eZr8qSHGzTAOxIt+yNGxSGZnTsF
	 Wa76mUKAirMfVnMvWG7YckX/qPfM/WSDsnN4JvWGRAoY2B8ThquxqJF6/qa7r9l+cZ
	 Oln5pwKvlEJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 738F0C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182988743.950.2232567223412489973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aab3ffea5d14c8598b6cf928db7868aedf8b3330b6a958c4956b23ce365a85ed
Date: Fri, 23 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671829887
