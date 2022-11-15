Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2AC28ED
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749EEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668505854;
	bh=aNyKISO4Mxu3TxbEx84HjClfk/+ZaZa7qFFTyTVyqgo=;
	h=To:Subject:From:Date:From;
	b=Ki8Pq1OT935DuifOE5v8iPd5QT7dRHsuA6DxOXmwPrVZ5EHokk4aavp9j3Mc9p995
	 eAKLdu5QosiyZQZWO/59vLk69iG1S1eb/hiPlMLcBt4ho2iZAIBEMXMsvePJc+Y3m0
	 Wja+npYYk2JY3cB3TIckfKNokKQzKuh9RpovEHCV/ZEbMesh0XcxPSXUdbcrGRnXhq
	 yr2cO/rjEr+UnUZEraEHY6xJKaWvYsZRrlS2EENN08c6eQ/BVA4rYXxD98FiyqY9kv
	 s8UpE3SKxT6oweL/a/p/FQZbUQtRWyNS0Uz8lb/WQ8fIa5R0WPS8ClWdMlfRnorJ9h
	 auH/sIg0gwV8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54887C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166850585434.23828.713796351024543924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01979b46a8e55b0c7e64d18cf53b43218d4d699fa831b965dfb585ce95b5aae6
Date: Tue, 15 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668505854
