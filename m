Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E377493
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ku5rml5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 802DBC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701516496;
	bh=KnuVncuGCqq7eYogEevyD7u/oCK/aivvgy8HnDgzHtY=;
	h=To:Subject:From:Date:From;
	b=Ku5rml5qY8LeY9SYBOiTh7sC93DT4Olj8/Gl4DF5RloVTrBSGghdW8p7RMJkVfKjo
	 sZMY2Z62aW7+HRlmHvkkXdi3pjLHvGDHPuZF+2kjPZ4kFsBuojgmaP7JR7bCs0wqvI
	 uj7ArSzrcMJBhYFj/nVd9Jobhwt5LuAcG1qYO+mXXwfe54t4s2lvfS1kDDtCDOPbW1
	 xNaU03A00V/xPUP/j5z7vRxHTMoDn/w/rculxQ97fDC3oile7xuRFrKHWfsYIJiNOk
	 L4Mh5c9dnyWe5h8eslnqUcmO/Zt7ldhpMIhpwEXtWBw27p0kdiwGU5NRgVCaIURJJY
	 my+cklvEWVTSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EE9C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170151649637.1351.3948161236847064324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c457f4285f0d9d609e01a7a2b8f2357f87b8d74b5b686104ce17443f7a8b75
Date: Sat, 02 Dec 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701516496
