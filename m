Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF9F7489
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B0ACC433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671737487;
	bh=XjmCt1Kh2jVL9gd7dRXQBc2KmLaZiYDPO7QoTOZ/WGw=;
	h=To:Subject:From:Date:From;
	b=JCtHxULsvDGMNCYqhquRSKgaFUGHfL9ifSLylXXMxMW/YQWKb6RKeztQRH+Dd2sFi
	 Iy1WlI/HR/P7F5RSvMGd2ds6/isOYlql6YQdIeQt4XBP5+KL1wdp7te9hPOSvrtECO
	 IJQWHHFJradI5I/l4rlzx5XM1ZTVXF5QFNIdXUI19zIpGW+aTboLyWs1J3SYyDsW+O
	 LITVjNgEBy39yPy50qlnJSGuR3RW7+ISOD1CZ+xzC+0k0IpEccbF6rUYcyUc+ZTodo
	 MpakHNazCFSJ6vfi8j4XKU5UZKvHrMNQ08Pz6z2olZDICAsV1B90Fw6fw21OdqG5Ll
	 g4HXnY6Njv0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69665C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173748742.25446.10487526241364160461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf0659c665983b0baa6d562804e31a63f47477138b5e8652095d263695ea15a
Date: Thu, 22 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671737487
