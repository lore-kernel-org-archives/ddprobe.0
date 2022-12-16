Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D421020E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D522C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671197487;
	bh=g1JsiJti4xnnmB2DHX1UO0sIcclFJIvt6vn3iEYACgA=;
	h=To:Subject:From:Date:From;
	b=sRXjIntg7jJA5iUCZnxnmu8+8Exn8X0gK6cs06HZcEIEbH/y003LF80aeinlyTgyQ
	 IwRr7DnOzx0PI9je2Rm7BZXSWQ2xgbC+Sw7oaAQM1UYyuPTfVkIvxlZvhea806+fbu
	 AAp8Yg5PZLxwPvWspkCXCAIjDROLiDkHZmOd8UJLmhCgO1et0WNifKEmPzdqtXXuB4
	 U4eBPCpcHMBSK60ZWRZnAOhZ4Q971ThCUVnidmgAJns5RRywxGRZMCKr3E2gxPvQLQ
	 Rd0OW3SirD72TPbAgLLf2DivbB2fnn25Bcq6N+lIJpmQtpfUyEM4D4327mrLhXaKvn
	 nBYqADOEKy5kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AC9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119748739.20667.529975713128363900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb08e8110b6642c47ccba839ce04c22ac5a03d7466e2d57ff6c176e32fa5a3a
Date: Fri, 16 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671197487
