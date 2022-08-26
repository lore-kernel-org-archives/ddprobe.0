Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0ADE1FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B24C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661476852;
	bh=+/4T3jlaT3R2x2ekXL9PBbcrpukal0cgjG6ZMR7Lk/o=;
	h=To:Subject:From:Date:From;
	b=MzDEEDF8WmX8ESo9IX06/D0eERzVR9DhYvkdiRGOe63HZ8fMcntkGF++ICDHdLErL
	 yHczysSR8r3Oi/LhEns6CEIhyvvDpCZZj9QYSyBZTcybeOWnse0p98BPk8MlqNV1w6
	 Pu5qHQQ6UZfJb1KIJTI9xcOFnMNCu2SAn/L3BCkJzBE3IpUBNu9VDu9k2cH0ahklHM
	 MUB5lRj1jI/UVxX5FFp7LSc0q/QLFFtIJx4psfHvPVt+r6CVsYRMgbHBZm2MS9GL6G
	 0Y33PLEyFI0+sh0VZoRg15/fAxth2Mc4JxyQwrYD3x1rBdANnTzADUhWX03hxcVSal
	 H4YQ3rM5S984g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A9CECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147685242.9229.155940157320192321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94e3e1a705f1bb3ca1d2f22b70e739cebe05178e480665c5abe59e8be1723d6d
Date: Fri, 26 Aug 2022 01:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661476852
