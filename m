Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3737E3201
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 22:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D688BC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 22:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675292165;
	bh=3nUc2RbMJEH+mkTMjv+/wpOSoW6nKw6VLbLhdXuL5uM=;
	h=To:Subject:From:Date:From;
	b=bgKUcJ2l9g8rBo03AJ+jiJ8gGMfa6CeVjTDweoQsBK1/7S+ZZ/HKoLdZvHYcI9n4u
	 w/RAdQnD3FyJ2r7L9TaCMGHIhmEwjk/pJhBq3IncslcpyApGAO90+pgNVQVbKObkq+
	 JvLPDXpFHeqQeuo3pmEo2MdDSLrY66kMP8u60wM20PVJNvunTWkmYY5eAtTkBx+mxK
	 yuICFmX0esnqxL5jM7TM1RY/WbmMOMHfpdKUDmEZ4j30DkKNvpurTFd6cKquFl59W/
	 Cy8QNKnh5yl0WnHMnRwUBHxRCB231p5q66B0/xjOtM31U/r0TouEh/mbQFDz5ICQZL
	 tOPyLOkjjZuVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9EDC05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 22:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167529216575.21861.16456163157343226581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014900f41b4eb1495c0a8682bc300ea8248245ab159cac47d284548889ee6c30
Date: Wed, 01 Feb 2023 22:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675292165
