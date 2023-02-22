Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4612F3F
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 16:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14076C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 16:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677082446;
	bh=66YbztSRV19VjQoiAf0AMz3lu7Jgdk1OMooqLqkmtJw=;
	h=To:Subject:From:Date:From;
	b=GqYHBtifHkBY2AKDMCisEbgsU31s3iAGi/m645zyzYh+X/A63Sx87Wl5qtRPqbz4T
	 hj0VvR3exGJxrm9rzXx6lI4+vgly7wAqdXsUlArNBq37fHPHYEKhHQSKMxqcVDORRR
	 5H6egGqWzarsAb5qlJz4q/BV1pet696E+FKTi6FONUYUQsW2kU9r6kT7z9DCgti+H7
	 CdyhfB95poyIRsp0fzIj2nRNjQuUZIDkQRCXS0uhDE9rg1gXDs0itNjolOghyt7bL8
	 /9UYb6RA6oiyhU0620oO9nhLCY4P6Ei7nbsPJw2BhpnjCKi40JRZdOc+zIN72rUKKi
	 WC0dHd7bklVyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA48BC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 16:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167708244587.31777.7261739086323524654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c267911d94aa14657bced07a362078da3b8356a9ca7d295f8f0903af20622f7b
Date: Wed, 22 Feb 2023 16:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677082445
