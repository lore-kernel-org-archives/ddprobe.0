Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93B28490
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A277C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668463254;
	bh=BYogaq8GPux8oXAMpnz2I5rz7haQ/ExZrtAJBe+x1YM=;
	h=To:Subject:From:Date:From;
	b=GZN29hvctVMRV7e9IxFv1kmLpTmFg6kayXnK3258xia43IfAF1zBa8aZfzofucJto
	 WZvwncWUzVlA8Ac8X19cTZ2i211jlncBU0VZPLj7BKv1UOUBEZi21D7+R08tGKXBpA
	 2yB2VwTmjfC1P8gquceDz9ujhZVtqJXpzPWlOW0Ysmw/6pP5iGGgLNPksLmwOMzWm6
	 EzHVsb7/MIqlz/UQ9gusW0khsUuT5lu/LGqfntreQ6LC2VEXB5FDmNC8Gy932h0Yl3
	 BBadJoiuU3vW9VPqFsCaKapqOYqJ573EOBDBUyn02Wb4GVSfJtSwANncHKaMiXaWtj
	 IG8qZn/nE5kcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AA02C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846325448.26631.11308695067586916611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85d46c7f510e859ad31dc39ed9883aab3fa34055410c28f985a5ef36488a6fa
Date: Mon, 14 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668463254
