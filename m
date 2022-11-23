Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD16F7E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79819C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669184454;
	bh=LryOUq6fJgVsoodSTrSnKT0i/QBxYsIcAQ1YP09q6s0=;
	h=To:Subject:From:Date:From;
	b=aAySZJqbyGirhTePxbO2SxpazckOgw4QSyGSyYy2UA0Ayf2iQnwGR3/W+Zx3R/WWn
	 0SVX4EIpHvgOkt8hD1vAYUYzQfJhO50T6JBHcpMszVwHU+qk89RKePetalo5vi5PX1
	 WBsgPD1+S1D6N9bsgnnEZQEEVY+IRCVp/wEOyww/FVXz1zIuf8+P+8SQf4qjEkYjcN
	 VCODWTcSE5V75Oo3ee4jFMABmuqeonG6Q4BZ/asI7DwY+Rsu83ZmyWdXBsZipOvitN
	 UPmSGLnjJQAcrzdNJK+7QDNCzic6zm1xWXx2a8xUyF65ELc8sp3vo6m1mgM5PVrjiA
	 lnqxoTiBGyo+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56667C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166918445434.21142.14931570227599414869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b75917e601a2e438404f04e2eff7e8a274199a2b8f4a3edcacb86798db52c41
Date: Wed, 23 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669184454
