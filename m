Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5DB2AB2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYRPrX9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C2B5C433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698244096;
	bh=1kiHaLtmqKRH5+s6UM8DQ4AsvOTgfO2p+1tK+ogbjtg=;
	h=To:Subject:From:Date:From;
	b=LYRPrX9klCcjOqTY0buaGyyMFU/buvinajtfATB7FBNIuFfw/5W9tXL/flB+ZI4U5
	 fnjKgpYRk1tyLHkR0Zk8QxHadIvfskUE9BOhXZ9VijJL6i1gL5rXAWg9tpxAJS581T
	 W+/xpxj3nhPY5i+o1lUw8T3X4x1Ktdj5o5Vn2cQ+JnTJnsWyNP4BAdcyPRHIFnmOhW
	 Y3fJrB65NNCoGbIj/9CWfGB/jvkbC5Ei4V6HBc3tOqdLvkxGleu15KdQM3YMtER6mn
	 0VbzIJJLMKytBv8+efJQdzJpdRJKFjZ/gm68IL7cLtD5/9/DeKFFJehdTni5pSURh6
	 eQyIaUr4WG2MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C590C0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169824409643.27136.10237798798712900769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8dec7d16718b0c988a08d5d3ea4f2066e0e6752d4e9a5ad17225f33102447e
Date: Wed, 25 Oct 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698244096
