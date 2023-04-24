Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5FC7C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 09:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA29C433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682329325;
	bh=IDcygKxrvBRdiRWgwuVAiuxQpEnV59vWaJHfktNNlyE=;
	h=To:Subject:From:Date:From;
	b=saEB/ywPUKlxrv47c9lqGertcL1wZu0aVRam0TDkWqcuLF4QRhuuy0t7Kut7tUk2b
	 O4Wmum91yxi1NDgsLudm3JpI0opoZ4Hs7/fp9YrnJn8mPcK2YWfFIk2vGYfgcYzral
	 ZshBskm4y/4orUqUEldiBdlDdxZR/bff5SVrxfam3QVGBCfnlbf5ZkbkoCL5wYmPBQ
	 b3Q7mzbj3LzoRmj1xDd21Fp0Z7y+kZiCYAoTiTa12EymQRo+oBfG8aZFs/KrDmyMnW
	 FDiE+Ll7uI7HZqnzzVVPyX5RPBjHvYHrWQ/PqYObxSUelINPW1VabLhxjZw0y4JEMT
	 6a9XqBqK7LT9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14DBC7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 09:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168232932571.13125.5760821244736512400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a819155dd426af2069b81ed61a3302c3fd0fe9b74acf8269d8b29e2b70e69cc2
Date: Mon, 24 Apr 2023 09:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682329325
