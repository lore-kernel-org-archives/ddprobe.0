Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B561E136B
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63C93C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664971253;
	bh=58nv+7ltf+jy81a4fBqBW8rLzExJ3GMjmR92er8XdUk=;
	h=To:Subject:From:Date:From;
	b=jDlt7lvjIvVcZPEJ/kVb6tCgx/6gaoLuvaXjNcA+6hjozN09ai/5gRGylPwHCsjOy
	 E4IDNtqdHMV3yUsnofhcSysOlXj5FZN+Z14pdNkLrYCB7FJKE+riPxCAH23iT4yIxt
	 yrYlJI+N+utlPdiynDrBvTp3zcjXl3SPP1cKdJ3bWwZQh4GbKPtxoQJJHi79Fn2vbs
	 RxViepYusYGePEPQ07cuozT818TZrI9sakk/ZYUmMN051sHR+tw9owyIFnWKAaWccW
	 s+jJuFh7L0CYDtrnT9YmxKpWJOjxnKpFHh6OL/Fdx3WaG0EV2n7Sc50vebk098CMuh
	 d2He+rrgS2yOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC10C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497125332.11665.10241368218359723397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7271f37b242d5e9fe78d0f7a42f4a17b446ae3174cc0914c6341c2bd6ccecdc
Date: Wed, 05 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664971253
