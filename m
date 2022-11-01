Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C19365
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C0BC433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667282454;
	bh=1T1VoOZSV8lOxf+oyw6dJVilbVdr1W21igj03ElYsmw=;
	h=To:Subject:From:Date:From;
	b=dI41m6oK5SNCltA1TWULqvYPY4v4KaWJQo+HsaXGSDq5eU6aQ67d4LVncOdnwPHiD
	 Y/6l+HnrlzLeIAlHWQnc4JG2PzkfCxYX4Gf4XoI8+0SrKUA2+ECNMKYvl7yZ85A5EH
	 gQBMQfuj+JmUJ4kqQqEjYapZXJW2MIXv93a+Prl+dV+k+QUPqUaAO8Yfc5vMreGNnc
	 wwvh23Caj7dQ+VAigWyXy1rpkIb7qy3yfGQs46zxEvIYzsgQsVUTJ+Ej21dIImrddO
	 EyWOw6NVjnGLrC1Mf0YcbyKAx0rXB9aoClFkgJ6OnZam58WJVymAj6AIyH54v3uikk
	 r5mZRV+/0+vmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C12FC433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166728245435.10349.6050759022100628172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2fe98b75bc406e7e9264b63a0963ca4752721c067dfb29b126e254a031beb6
Date: Tue, 01 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667282454
