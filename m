Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326C21848
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 07:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB28DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 07:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681715285;
	bh=npT8seeTThtz+B9TPskNiwNaLAN0FHT1gJKfTFnn9eM=;
	h=To:Subject:From:Date:From;
	b=C2r/GNy99I6ow79gl+eB9F/3fr3o8qTavm+LSXBcZgpkGVIV4m0ot8Sn1VKj/Dkd7
	 47J4a6DE1XtGp9WOyyIB4qc4pWp7qsowA9G2VNnnZVcbO1zHDhkpe+0IpW229xYwB6
	 Dp834awGck/aPZPsWuJQenul++mzQ8MSYAmoYCjxjDPc2x0+Sa2QJDFWaGJImB3nza
	 Q/b6KwFm5TcqWdqa2aGhFYGTebX0IRSingCwSpSMCxwQGgFQ3M/SZZeysic6XY8BkO
	 V6ponfFVlX2qkr4EWhG9d4qFLtzHUKkhcYIQ2YdbxQIvvYvqUhsu+b8n6QhznD2fZI
	 P7qKzIMJ4SCsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1890C77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 07:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168171528576.2503.11835930567075063616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670f9ed22a1454ebdbde388500cd3f8958db28352061588777c5aefe762b023d
Date: Mon, 17 Apr 2023 07:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681715285
