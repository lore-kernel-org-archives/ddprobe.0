Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680DA7464
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEDFC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687735988;
	bh=YnPCQLRz+w+IFFwYY1q7kSipHBxGEze2444DzPuya+Y=;
	h=To:Subject:From:Date:From;
	b=uFAZ1IKxeiovPG2jpkQg8lmMO3hz+oR+SpXwJLY+IrqcJjThKaR7s7Pu/hPvU7/GQ
	 YcL+0x2wWNXFWiN7AD7wX2rd2uyFwqBu0h2uC6nejrl202UCRMOGfKWreiThuydGt3
	 08kuvnkCUSM6G7xfGsJEG+6FWaRgCpM72GdY3nQIGnmo/Q6ps4zvqYzhL9yi1P29QR
	 hMi2gvA/Ct2fVvC4XQnxqcRpx3/NYJbmFjmCdrturkkIEIpBhob+rYJrmO8+9vQyJk
	 KEbG6E7YPkmMP/xp0UlGsp/1vl9LuoB4KGs1/UJzBMJnLjilwTVL4WyNe7UDZUFZuG
	 Ty9jtLqkHahlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C173CEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773598877.7852.9297815086519051870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f9b14c1098998a5b86fa563c521ddff6142a825d3f6dcefc1a5a08b67640a1
Date: Sun, 25 Jun 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687735988
