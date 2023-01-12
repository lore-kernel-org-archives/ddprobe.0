Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3662F8470
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD391C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673550087;
	bh=s+rOWmOZT9a9kVER4fv89Ozs5mtLLSQilEgksaD8crs=;
	h=To:Subject:From:Date:From;
	b=nBiZuldud6kARgQCoB/YfE0//BEWqDk8A7z3ccjTMKfB+11NuzdrhcLZegYrcf/zQ
	 huwCKQcxB90roJhGWC7IxViWrcjY94t/6ZBTBBv5dTeeqcEFjCPU4MarylajRhE6Q4
	 QACfX4HSJCjjiCZGCBc4cOtfKD6pJfUnJuv/lkb5KiDHZwqbh+EkeEn8utud092vsm
	 xXmtikAVqg4TqBkKUz4sfpiwyC6sP1nNc5Hd0OjLe6LvM5PBGROdnPCAXtZtofgwKN
	 RmKWer5x9jz2tVqwmlFDIFFC0vv6vJ6zyo6rY+WHSOqKsEuVGLALPrm63tVvSnJzE9
	 Lv87pgZ10Urgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7644C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167355008766.19468.17833319049393322146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef4da84e6edfc2ee1c246061aab3ce70e73d0186712c6b0b39bc833a9cfd1d2
Date: Thu, 12 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673550087
