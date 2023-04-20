Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615D88F44
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 17:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E760C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 17:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682010426;
	bh=auQGSs6O3WDYeRDf9uOJ82A+6ZeyJCcaGHtgMnbjMhE=;
	h=To:Subject:From:Date:From;
	b=PNXmjflgBJ+1o0QhsDSH1G7yxSgnOnkg4T2woZJSiMPLdN6HttMXWyRs8IMt+OjLF
	 xhrzGw70IuOajUcvG0Fm4j38943Yie3fgyeqyAeC0iY5D1Yoa36RbN4M7pkTf7KWD4
	 2/+BhakLk5a0V+wYqW4kDdqLxQ8jejzvjSPC/D5Axmr37lwrxyZ8AtZAe8N6pphJ8i
	 YrwMxHh/DLTSrRb+owg9jZIK+ttbjiLF1n3KCuzNuYu7u2OsnHOUr618DnDXqlU/oE
	 spsVTbIzeZ3OFwYCZiVtXROVHEBeKP5yoqOExwYZsgG5coP202/WN9VXOZyR3TNwKK
	 ylMrIRjtLUYqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC684C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 17:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168201042582.30018.17509702155532289929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeabcc9f79d367744c1708184d1c32250448b9c54bfa8aad37586b331004a0dc
Date: Thu, 20 Apr 2023 17:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682010425
