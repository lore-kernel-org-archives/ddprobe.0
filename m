Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC39A813
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F995C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670691687;
	bh=ypiw1JWjzu36HOaRh6WEqGCx8MkTg5klm8lEndyKNuM=;
	h=To:Subject:From:Date:From;
	b=aoc7wdoUXYV/WHIHRmQ+lpKnYFbM1TeeDoFLPgA63VM1vaUkGhw8dLdM2uNaEu3I9
	 sCNDcqHn5zj+PjcYsHQ0N4slvO4JRwiJiIJCdENYsI7/tVAs3oXczXIGVC5hfKiBbq
	 2kkkGNfFy/a/z+5wTaq7tWS92tnu1SyedddmooIDIY8ts6NvHUEf0yvWRg7xCRoHcz
	 iYD1SXAFK5Zumk+kG/MExJVmUmOqkovxWOAzub9bfjNynvv4a687opSx221hDL7yee
	 ItVt+kepzpvOxo3XcZmORKj+SfBxIT4gc+Tpc/VfFp4Hphs5kLkHqWM4u81P0s+C3O
	 9Cfy+3SHJfyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8C9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069168741.28924.16010799261439003679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a804435a63bff6c273daf970836fd58fde8dd58efae031501cadc717b360a0
Date: Sat, 10 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670691687
