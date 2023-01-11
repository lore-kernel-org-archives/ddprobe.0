Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DB817EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BFE3C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673431287;
	bh=vz7YZZEZ5QS0TKcStRS0K8/2Gl86EqrOW2wxGqws75c=;
	h=To:Subject:From:Date:From;
	b=kg/pDhWdDj5yLW3InT+AUJaDteVYsAxU8CUwTIKKy1Sb995QkMAR4C8YSoQ45zL2W
	 OSWwNpqMkr6qzpklF0g6TjK2pttjKOMnzXuWp0bVxg5pggQPDcq+5B59qcFpBYMw3V
	 v+tD5vI8rNHcqCWFBwiH7csBROeap/VISM9jh6RDLb4nwwCY+ohVdiCe7MyrJi6idQ
	 xuTcWO7FeUzBH/O2faK9dfZrO2qIB3wq/uv4NWDpSQhBAFYx4bT91eKobZ2NC69V+e
	 3BOFBx6P0C/jdDiodGG//qMbdYZj/Qga5W78YkUZHfvispAbpReMvUBKcWAg4Nwb3u
	 u4YhkO1VTFR4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75495C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167343128746.21845.706391716802179116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce38d7482f3cc0ee062d9c5e707e7c6aac7411a003ca694e617a9b98f1d30d4
Date: Wed, 11 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673431287
