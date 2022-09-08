Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DD87C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5E6C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662607853;
	bh=UgmENouzwL8zAc47iF3M7OxcDrVZwVqjm4ov41Qff10=;
	h=To:Subject:From:Date:From;
	b=fbfx+lVtHNk/dXxrYN52RmwiU1C+UaAvCoJ5pfDY/iA+9RLP7uaeK/LDgY9dBQ6wh
	 JnhBpdgnxNlKEA/IgFI7yeMIw0FayoRToHqxe873xKAXHligSCuRB5ExtbFhZh9wr+
	 jAgadrRyHL5FNQmb53leghzrfjK18mYjMi6lQ0Zle1HUop90S8XC/pxEjSPmX6e2SI
	 FIll4naQirS73UCB3lt9llfkNuniv06bjCeXN2phRaj8U2k10HrP94lT9jri/QMMv7
	 a6cx6dVBgUJwGFKsnabAqgY/ngzT6jQD/IPyA1+2tjwqgiVsd60y3NAKmcPcZ6Mq1G
	 rkF5UavTQFYew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54678C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260785333.7619.7632969892921492285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9275fc64d52bf048bb3a5f6dbb6530c4af228e02a7db971fe12c3bbc58aac239
Date: Thu, 08 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662607853
