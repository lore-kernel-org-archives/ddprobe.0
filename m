Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B70D2E4
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 05:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJ3AgvNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC12C433C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 05:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697001428;
	bh=kSLA+CzfAVSsjp6aQ9128zSKQsbV0gF31CPZO0N52d0=;
	h=To:Subject:From:Date:From;
	b=SJ3AgvNKuI2TBVUAabo70NRGRHwlCD20CCGIuT/Z7ZvPUGwzPGPC92MceNgyQxnsG
	 kdN6Khu6+e7NunspL9P3h3nAJj4I8VzJqsv4vC0D1DQsREVARSgBVW99zSCVsjkjtS
	 TzIyAqwgnkrVVPachRGWs5q8Bfg1VGyozRX0uWedIzKmCdCPf7J5L7Ungj32qubID5
	 1yvEV9TRkvHeEJqLuyziYY8ecfXYwD0PjgK0eeFixGIYpS9qOwUQFudpqOjTHZxXAm
	 mDcq/YPurj/0VIoZ/8bZ4Z9qQlR3i2ebDb75vvXTwf8yL/YdhFQVe7zwGCbDYCCToA
	 7NQCvRrjor5cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE2ECD98F3
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 05:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169700142871.15484.9932886919292103577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61ae3080eb990373e0bd31fc75e49b6ee63f5f4dc2d232ce56cdd4c1347306b
Date: Wed, 11 Oct 2023 05:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697001428
