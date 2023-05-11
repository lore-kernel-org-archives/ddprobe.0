Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D021B8FE
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 08:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F09F3C433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 08:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683795246;
	bh=CyCgEm0C00jwczsii1/9mM0dTNHF6KYE+d3kDjrqo1M=;
	h=To:Subject:From:Date:From;
	b=bEM8/E7zYr14ZuDHFd13+KYx7dhdbInQO7TupVG6FJH/z0eOmhrNr7rbtVuv/F0Ox
	 7jVcvtVHGea5G6HHQGlp2FM2pV1WU+rG9Lf/3MiiGUbbqFlhtj+1RSj/rL+DQjW3vD
	 qyCJLQ5kup7hIBiTYWHInoXu7WjpWPTHVRrrMu+bPwLt9tJBCwSKUs1KeXhvVrkOjF
	 JpBHT2JrD9Cnjc3xY3ZCTNGUGdzpHfkwGB9PKrEi99MLls/z4EWfw2vUfC87Xvw+mB
	 JaB+Jn4C6cT/ZKQZpoNPeMZ8CCDRXWMGtwhHaQCCf7xP3A7EbgqxpM7NXom9t2AOrK
	 uaMNOH864K4Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3708C7EE22
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 08:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168379524584.12349.3019635249193150979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27178e595fc57d3ecd542ed67ae23fa715e7faa74157b86a613deeb262ecbee3
Date: Thu, 11 May 2023 08:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683795245
