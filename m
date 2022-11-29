Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7A4650
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694CEC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669705854;
	bh=XXCxw6AyiVDshwIjxHZrDRjq4ELa0v5CCt8U+9JUU7c=;
	h=To:Subject:From:Date:From;
	b=u2jnMQisXgXeGQ5/7yyM9IBIsZcKULqRLajktB6CBHFSvBDD4daJw0zEhvzCYkTNc
	 gZ/LUV8sfK/AXS0QQ1Cz1cpOxQgrjoncNdDqX5YP/gqc5vxSkCYP0SauQXI8oLYtAJ
	 mqmDHwKndhvJ+JKIx1hGno2/q854WKeIdnfBXn1EeJzJMyoew7MbYYHVmPm4E9JJLf
	 RwZrcwXth8Mtl3Gc1cxbY6XQo6vGarOQ+DlPHsKnApQBj4VkNSY+yOVCFwzVjznZmq
	 0/IlaJPJBxjNxep18YoX7xHAdsAqYmOLUJhZKZA7Maa7ilV8hGD5jSPPIQ2+oYpoeu
	 zS3mXV30vm/xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB4FC433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970585431.3091.16281499598586024697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed5142235d320cd0acf0d2d649907eb0af3d7ee9da9c7a35753d8c72f18bed0
Date: Tue, 29 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669705854
