Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D5A623
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 00:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BCCC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 00:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695254708;
	bh=/o0JgUis5Q2bm7FuxzOFWFd2gAVRxPRLX4E/oh2dKCE=;
	h=To:Subject:From:Date:From;
	b=B5Yamzbrqg9p8sr063SrWNH22L3rDCzu08kYkm1uK78FuEOSSq9JgGvq/79bXHEjW
	 QhB+TLldF49uZj9zajU/oLb03n436WnqZk9Hla/6PJcafQKmj6zc0ARh9YBBdtR6In
	 8XVeRyO0kBVr9Tsvdj/9r/5tyw89y44xTpEl+Oj7ICapCbgBERSDDLPGLpiTfwL4QT
	 2+Dm7YQaXLjUe6NOVjGD99r8LS7LDlsxuOz+DVEN69fuwuAaeRyitaSZ0tkrB3ZgTI
	 U8G5HRJDYE4vnJy07yF8xlu6YqY2zGYHvccNg/HMXNFSyqewEYhNJnuY08OjhLgV+7
	 NAiTTqsT/Gxeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81E2CD4937
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 00:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169525470868.11276.3925971216582739389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccbab7e2bad3272afc8ccb343e3d6ed33ba0358ce30af0050f5cb6499085127
Date: Thu, 21 Sep 2023 00:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695254708
