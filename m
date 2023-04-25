Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C5E7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 04:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3A3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 04:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682397905;
	bh=NX6vQSAuPmTDQrY2BJ+hzWoFcjTH5R9w9Fy7u+CwPOM=;
	h=To:Subject:From:Date:From;
	b=YcV6DEq0vp2nveTlHECVmKy9C8JJA13PjQQ5IPQnQ+ApkZmE+C3PN0lzgRsRQm+tm
	 nwqCeuXVtRnSJZgpioZhxmMKzuVOjARRjCwVqyX9R4kjXsVkWzYZJARsr3v8YmYmR8
	 fYPyFF7ts1wZi7uVoUJ/O9gfsfbPGrTOaHWok3+yiwozbogvHnOD2a5mw7PVQMYrXn
	 4/yNA75IZHdxKSDPuYbtZ39SGt0xQ18hLMWneFlAg1lOEbwAJixmrQvZ2VPiFM5af3
	 AcK9IapGrAMS1ERPshaTWS+ginhQolGKTka6WA/A0uLs9dDJf+eJeA5RukFU5p1lWP
	 UtrwhXZfxdJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5180C77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 04:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168239790579.25293.6247662819862877121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca86e1cdde16da68dddbc9b5723f5f852aa45a060a96271f3b5be9b9a2479396
Date: Tue, 25 Apr 2023 04:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682397905
