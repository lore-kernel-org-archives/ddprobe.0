Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFEC7E
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BAFC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664404853;
	bh=5TkTU6q8d6NWk6x7gbBLcB2jH+6/X1U2ukU2eZApNdY=;
	h=To:Subject:From:Date:From;
	b=IueR6pdX8ZIDIH7zHCx9A2aAmsrhPI5UF07C6QQPKqrHlUl/ICwcNQ430LN+vlGnR
	 Mb69CUipGNog3UjkpuJLFnNR0h+q2CBy79yEDGExAm3Zf+Cudd33c5gqOuWqlqncM6
	 9tkJtF4kEjhbJAwqV5Wm8JGfhuYuAhwX47q2RMgMkPItJcfBRPy+29WqPD6hPEnoHh
	 mXqzlChinILhEExDAqc8+lD38xr3Yd4lSLU5BFA/g1DIWP6KkjqBROI3RfOwt1ON5l
	 GeuyonbSKMW/1tzaPM1ShZNyWwOITUyjmrdgtj8HID7GJRCY/R9UEqlSVq6N0DBurb
	 V7KHHgOPcZ5KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5551CC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166440485333.8322.13024166604697383636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ce5b1f596d74561091a40d00f3cee7164bc5579fbc18356593e765fcd255ce
Date: Wed, 28 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664404853
