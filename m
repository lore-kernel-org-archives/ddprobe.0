Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E3579EA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 808D4C433F2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673540487;
	bh=va4rEoFGiNUOuXChPYQg/+o6V/m4HJjJrwV9Zq3y6SY=;
	h=To:Subject:From:Date:From;
	b=oVJB1c0b04+NYS2gcLtYNcz53m5H3ze66lXMpz1lUXE1qd54Mz4YJb+0dc27t50PV
	 PEw4Dgjtgbm1pAtwKQ3qo3VWkWjAHVVnyQKen8ziBWcW58eEGicFiinK9u4RuET6Lf
	 m24uEJ/Qr0c4sAw7hRV7E4V6IeaqUwp+fH3ErFBfxXf53hV3Af9Zg29VRWcnTqcfap
	 xJPWaOB7a8L2/UPD1PMhtDUkJvAD5du4aHVOfuMEYPnTSXRbozuhVCRcvjqvO4o9vE
	 nVKQ5rr5iiYJpnAxgt7kk9GFLgeRzmbJsbck2lLpZJyVKy3/bh/gEfUFz2gMS7+5Ln
	 f/ntdF1TRDhUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69184C54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354048742.1936.17579491958386354849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ad6bd778bb791b4fe58ff306310177264d6baf73ef6184c9a832ba5bea0d65
Date: Thu, 12 Jan 2023 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673540487
