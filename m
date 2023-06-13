Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51294174FA
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EA9C433C0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686689228;
	bh=+8DUxCtFqdmofCiFYYoieJx2PIiI1ZhcemuZMJeOd4o=;
	h=To:Subject:From:Date:From;
	b=LHsHiXUdxwfsx0Rm7wuL3iBGdP/h1dAcbCjR/jzk7n1LAaG/AkM1uwgnBV/uh59Ps
	 jGACEpYfvyyn1y/ON7PGa7zXFQr3zrUg7kHqh61+BL2A76Ck2qU5OqaXYDhj7C4lyT
	 /1naRDqT7nIT6UAxF4CVcSUy9OkVQ+2bZ1kjHD5ovwObuPKGnaAR4ExwHBMyMicUGO
	 KLI/4qN0YBXhm59UwDLwMJTLfPzHfOCrkBxhOyrwEuzEKNn2X9Y/YxB6x7tN7Fkz+i
	 mj1I01sWR5r5pA8w58n7YWzimRzZypvG1oKouzyKLHGf0kuiwLh74W/OdXNU9Q8cfG
	 ZVzHajlmnc9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A664EEB64D8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168668922867.8170.17225539281266909543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6686fff73142f22f9ba139817b684fe6e392df8deb29ddf2193bf351c6e87d
Date: Tue, 13 Jun 2023 20:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686689228
