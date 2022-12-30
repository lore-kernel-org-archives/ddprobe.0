Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D691FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94607C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672388487;
	bh=wZmenwKObWt9zQssAH+I+nRVxEhIVnNL46GoHR3zgEk=;
	h=To:Subject:From:Date:From;
	b=gF5+DQ3G0rTQBi0UxkvHL+4s3YYjV4TLqhXa1rnN5x6JSCGrm5923MS8rrikPJSVM
	 UncMqf14qr0g/zW5/i2MpREEUcMmWH0F7pJx8RIrxjBGtv9LDy8mSDTjAMz8LXK2PG
	 2chmVojRAAblUS1h/My/osSq4hylwHbDiix3gEOCctUkj5t6YyLHDYOo2wkp1lkW6y
	 8TjE1QdUKVGtjtA2u796hRNxB1Hpvs+AXkXsg6xq2eu6lTCK4SdesmpnQ5yrIuuzJW
	 +AhLDwrqwY7rhlFdVELHT0kHnpi6UKYFwgf9MDAGZsBHQA9c/e/NwjgGXth4HhvmAV
	 IjUd8c/ihOYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7847AC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238848748.28703.10225238718333964740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95f2a7d2882e1d68e6afd2069a7f3cd98e1ba2726f9f98873d4c86f8c14a2a4
Date: Fri, 30 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672388487
