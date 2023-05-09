Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E58317FE2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 15:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33B0C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 15:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683644465;
	bh=HqrhIA0Y0cFgxTOqSjG8HTjSpiNuMW5P2Q4IgusU19o=;
	h=To:Subject:From:Date:From;
	b=KKO5PgX6h/T+z7hdQtWJ/eJ9IklTEHbHtaSiu6mMrwDTtDmhtMz2JvJ5CokmICXAz
	 1O06Y5MlGGv6qn4BNluh9ih3pg8b0zYLO55EjISXnbgD/Fu931h3toQF43ESB+8652
	 12G+Nav+e/54r5tzd7na5CpdMdc9UJ1uD3XU4u5b1d8gEYc1yrxYHmKTZX0xBCUKQb
	 p56rZm51jNY1IZ062+qtQD0zgmDiFKvfo9aTfn0hdKP/8JJ/9C09Zg4dNCK6Wzxr77
	 jwFj9PiD6rMILXaVWIlJnxFUDGfB4Yn8ZVWgLcSZ4JwYdMr1CyXEQVIrhqL+Gpb2kK
	 Inhu5l9sWWKtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE659C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 15:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168364446576.11089.13669972274224780604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cc3263caab17c4406ec02583309f9ffa79cf5dfadfe8c0e26b19d646e392b2
Date: Tue, 09 May 2023 15:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683644465
