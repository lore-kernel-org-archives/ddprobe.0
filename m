Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86DC1A2A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 08:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F06C433C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 08:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687075208;
	bh=XMDaCme6yWd2deEOYml49Y/MJgl0kZk9aeP6u6OF1kc=;
	h=To:Subject:From:Date:From;
	b=IwZX5W5IXsVxOQ3s8qMS3IxiLIW56HV2FsjbIbKoS0kNDl5bGLBoHBs5Ni3bd66Ab
	 F7Hxtu9XCUlZj5iCsNy7JKeRF6Ft08Gj97Msez85G6PTPHTJdiBiKxyVhwE/W/9KW3
	 Wry7YluByxjjdBNSQlhkUk6tlafOQVjZ/9OVIEVL7dOWIiLiApWiL8GIwrt0HsVJHl
	 6waD9a9NEbTZaZOYexlTLNeRbSHJZY2vCjtQL+1zLnfKAtkg6c9qjN0Uay77dng9Wk
	 Jm/jLvOL5dwd4pc6itZ+JCwTYcZOnpMsaMZWxnm+GTHINrDUqYB7XDUVKpJIEBPJQX
	 QfXGB2/Le2Q8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD16BEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 08:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168707520876.4161.9314686623611944989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f8e4164f3d95fe98b3bfa66cf373c8f7bf6124edda939b5b1fbe30e3d41fbf
Date: Sun, 18 Jun 2023 08:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687075208
