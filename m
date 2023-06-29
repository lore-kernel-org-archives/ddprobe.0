Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A0F79FA
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9C7C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688025788;
	bh=oXxWtypk2kNvmVmrSUETmakptExKtO3dmRbq/XQOr0c=;
	h=To:Subject:From:Date:From;
	b=NI97wm5MdBhL4uWaO5IsPfb6ktGgEySDg3sg2W++34ArsLNMMfgmbGDmWymsCIf7N
	 Li0TPPP/OuVodkNSgGl8SwI81Hasrf96S084VAu0hpbZsx0ChZ+1QvS6jcydrKjG6y
	 wkV3FC4qc3cImeCClyJA/vRJ6ZmAx3Tm50TgqXjVu6tUtfqzXAXJtRQU6+1pCh7AzN
	 GQAB3tCRNjN1cSpf0RL0PuNJAZsi5d0q4xaZ3Ty/EshqDosXPiwO/VrnDE41bs2VwC
	 oiD/eewjuXsWzsXvLng5v7QRgj2TQGamSZBO1bBBgLmfzId1zlSColmztPkOxssSXU
	 CSZHgIlsy+dGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0749EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168802578871.27384.7966625676234623595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377a53ccd8c016c376221a0363d7d413c0eb591aa06c5e37efbbdfa5f59edb54
Date: Thu, 29 Jun 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688025788
