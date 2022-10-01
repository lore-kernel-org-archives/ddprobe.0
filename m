Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A443023A7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68ECFC433D7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664611253;
	bh=NBwxrdjA4uxJLAihupJmly3MGL/44/ttU5uUgdqPYSk=;
	h=To:Subject:From:Date:From;
	b=GDBVz3MaEnYGUFBiA8BiwnWRvckXPToJsKgmwA/qAKZI2HANF4Xy41T9y2PM3Ge0o
	 0ScMjz1BXqwr5SHuqDWrZZ/uRqG0GY0hIywGDfNDoss0Uzj+8bcz2or8Nbn7serEtg
	 WjNsWQJX9oqbgcQ9rsSQFPFr74TWCEHWl/yTvCdqjKpRha3vA3X/rUiMAWrAyQOd5s
	 GQIeg6ZwOsfg9GWQY3bKtmdIPnkFGabC5A3/WnPQdgRwQmAL5NRGGx3P9yGYvWnIYJ
	 qTlQAegd7ubzDRdJbHgLegfl2jgOEmxAmgxIKJFXxUqa5QVbgqaqzXGEAQIk2gHzgn
	 dQ0sLNmaaNfdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527FEC4332F
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461125333.29411.16904361139455896747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577eba7269b7ebd6c722fdb85f4dbc96aac434962dba94c68bfde17d42743f57
Date: Sat, 01 Oct 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664611253
