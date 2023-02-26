Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AE17B
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 00:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F37C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 00:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677370505;
	bh=1Jo6xyvP+fFpJt7ZAwkqtVZOZvljrtz2Ljyhnsb7trs=;
	h=To:Subject:From:Date:From;
	b=QQl0Wa9Skt1xgmxzhCqJOoK69BvWfwD8+UQ/vW6RRwa4F2EBktQU5ZUhREOq9gpNb
	 ut6hqsE+oq3dAmsGaf93ePbQannxEqwaNoRkfPEzTS7vrrvJIt/NUDwip4bY4iP/RR
	 TedHCH4F+shJ0D12SD3AJ/riUYnew/zkfej9w5V7AUMU+vvsoKid6NscaCZsBZcec0
	 68HQ9GfaHdp0fsMy+fJnJZlRVHi9XpFQl00//hA75BXPlUfc7jt9t/IiUjNNryn39P
	 dyKrN2MNt+llGd0jaWTZ1/tSKw6cAS6f2foJwnVYqQfYyDpJXOm0Y4lVdwuJfysQhy
	 E6v6LLmZyrNjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F57C64EC7
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 00:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167737050579.15680.15520986703111984937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2d19edda97b5036d62bead6478a11f9b64016f8fec78d141dd72bbf70f3517
Date: Sun, 26 Feb 2023 00:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677370505
