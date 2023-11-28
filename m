Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A1F63B4
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2bH+HS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87391C433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701140296;
	bh=ueK1hXdY/t1LJuIrV1k5E7Qzkaz94XxdLQEANMjv4y8=;
	h=To:Subject:From:Date:From;
	b=H2bH+HS3Bhvksu1JYhejKwel9jn4th3Dld8j74uO0X6MbxA6Vw6kE0Lks3weqTZBP
	 DGQHEpdTChwZPUf0jHWuS0CMV3Ar/eXhGNj5/IjSAtMdf4bVPTqV5RQWkxFNl1ZMZk
	 cWQ7yH+NcwtpOYmJHIGgfhkUjzb8WDj7nqMt+qRHUdyyyfHa+5h3tfl/QyuKcSsJNx
	 pwa+n3OJZG3v4GsTjAlh7qfyjD5V0bJ5NXR7BRq+wC05HwMyNb6RHUTZzwYbRhRsH4
	 MWWHmIDFdw1G+5OZC7dbs/zZYJDlM0q2pXHOPlaJ2obiSc/fncCw5cTqELHmHlwuZx
	 zO2lR9fyIbZYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B5E5C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170114029642.22739.5393373853196064287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0094beaebaff29ae5101c66458b4d1519f808929021151815acea9d410ac160
Date: Tue, 28 Nov 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701140296
