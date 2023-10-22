Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2806F566F
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDjuXj+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87AE2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697967496;
	bh=trr8tYiNNWwUjH8ZDBxINJLdCCcc/CZNCgdqNMoD/9E=;
	h=To:Subject:From:Date:From;
	b=fDjuXj+h+uYJAPSH2UVe4W566Gx7uAj/EftkjliP9C9LYQ8uWJiCdBtJYxmHbSvFX
	 F6X8sWCyPRevxxUWj7SHHgjE9prd87UDblYGk7g1OsYj/2vfXSQXicf186dQN9Vsrg
	 sLLP+MyK3JETqFAVJWbiFcTwFasLDPYQsi7NEWx9LeEk6IGeo80u5FDf2JkaWvmI7g
	 f+ssamLT5x0X4sx5XxQlz1LrujuLJ1YKhFoKKRvL8vdghy7QAZGR5vMd3int24BAle
	 j5rsedfXOmrtkIT5kkxgfMUtwLV4Bfxe8muqe5fQFFMSA8wTvePCZqwrFreEqW8grV
	 RCeWbswOmC4Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686BBC001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169796749641.22268.11702915342492909602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6822ad4c1c86a057b9a4f3ed15c2b9f5346c48a56854a845a05b7b92c1ee334
Date: Sun, 22 Oct 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697967496
