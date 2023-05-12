Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C43BBE4E
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 14:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01DA1C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 14:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683900906;
	bh=nub+bkfT7IaOoepE5AYr6sOiGdU4h5xPjAnP/b4wKQE=;
	h=To:Subject:From:Date:From;
	b=GvvkfCty/UJkpEI6BY3iJo7xR3+rAFL+seNyc5nf5z7g+tai0SD0jMEM4SukfD0oY
	 P/SPfgFXgN5lvG8kR0ssT9NUJwsmtxklMYixQFtN34Rxqww9em75x1NdwKdH7QzXu2
	 m0jkXTWTU3iGuJhoUmT4CVZAzJ5WmTItTkZHq47pxIsm87hqssbUMqi+gEWVBIszJ4
	 4r0ha5MgTwStN/zYzmuaxdvSsrQWtD0NCAvo0MJPyI5wgNQFCslhEsH8gGfQSY7pD3
	 P3n9PQge8VD74K7b44tB4wFN0r9DWZXUA2DFfBiEOZxIxArMFGEtndW5OK/Kb3zalP
	 vzgseq2jmJ0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50E9C77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 14:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168390090586.8904.14066281489118327822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3585eb7cc9416e720431e92d5c38c6f95a006b9b7416a447226cddbccc8cc396
Date: Fri, 12 May 2023 14:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683900905
