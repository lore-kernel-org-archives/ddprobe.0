Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A945E174ED
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03D66C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686400206;
	bh=vKPhAqZBErFLMCevHpDFSZGFCVFAODelymp+oJGLW8U=;
	h=To:Subject:From:Date:From;
	b=ihQn5amrKmjx5vUWyrAv91EGfYUSe2hx9iwDc6RAfGARTx9nj8RcYrKvZqsE/nNSX
	 q6o6XXV0iZSBC9JIBZQsxFNcH56YeNJ7Cm3zcmmd4gT0F6UAKC7whNxPlohK0GAPHf
	 OytSi+5rR8jECwkYU2YICxhY9jfY2S5XrUwcJoNv8nN0yBHLKZHm6Fg21+doZWZQ49
	 xCJVsf1VIkhTrNzKPnAYkjwxt9cxhPe4qOnBJGY4RHdbtzREXMmzYDH1Syaz+5z6wJ
	 /pK8e8Ari+k07fa43uXm/DrK7tI3qhYdkpSYRk/CobI+lp6JRJNAiZsx0Lre6VuD5S
	 tfh0Lc03lQ3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA48C7EE2F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 12:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168640020583.29625.610793002586798371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0d89c2acefc16b6efabee8794a83480ddc4a0ea6ed34f095e1f3d001043c51
Date: Sat, 10 Jun 2023 12:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686400205
