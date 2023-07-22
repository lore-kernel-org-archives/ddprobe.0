Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682761C3B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0090C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689987728;
	bh=U7G/9ZueeQhAF8Xrmvs1NGgAn0iorZCP/X3MaYIDat8=;
	h=To:Subject:From:Date:From;
	b=fc7vI1niB8Ap+IaAjFkYRhicSoGxceFeKHL+QJhYBZCUboTvJNspQv3W0d2ALDdY6
	 tKakRKkelyoXUel5o64DBI2iV0lgAuZLCKxRx+5EP3VK5zQWtNTo+EUUtfh0SqQ6mf
	 JT0vzpq8XF/3MmR6c6FSmsiv3FtVTr4SBCmnnvIpXMMxrkPkQp3vCBmMuKv8JNl7ez
	 tM+hN/SK02+36sh6zcLyxdgTcGNE2MMHhlRF8AFeWGqwKAszOuxt8z931n7zN8WjJ+
	 2SsJpQy9HOcQr7wmfqyyht39dJZKlDmVuepv6VWkv322UqnaVDN9ZWKn1Fu3VAdHFD
	 4iBwYVtyKSXEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE933EB64DD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 01:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168998772870.26297.7880309161584153059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 689ac28e3ec1d451641ec971bc8345494f4b6ccadbefd191e08feaa4d150778e
Date: Sat, 22 Jul 2023 01:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689987728
