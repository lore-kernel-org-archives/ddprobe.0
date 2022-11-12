Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF49DEA4
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A3D0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668255654;
	bh=YVMU66QMue1XgRRSTVHDn9eDuFXMTgbIYe3EOKFEjWY=;
	h=To:Subject:From:Date:From;
	b=ZnRKAGww4I7ZilsSoni73QOmWlxsMdXfqZIm6g77z9xpYKsK8tQ1UZW7qziVZEGK5
	 lgOCgrCdwiLxQsMo7m004gzK0Q2hJpdYgu/nhDzfuTLUnya7dVKGkpI9N7rWe5ybSR
	 sI4AyH/wCUONh5CNqCjp7s/gGNVYvUPsWHYhRNmqrUDTS6NoarqyS4ZvRHcLMpqRu3
	 2fTMbXbWr2nGvuA3Ze3sspfYWRioJb6RSfRNw+c0Lr0Nlq3IUuVwwuvco4YnY/Xebe
	 813nFFZDFwnZJO7muH6ErVlx90Tsvy+JbFesbnt7qPS9VwLIj6EmyBavXPhDao2hz9
	 BSGUmoIPiOe+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 699FBC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166825565438.13894.14343488932161870384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae367c6bd49b45cb0c8cb8bcf1bbf6bef574ec2e7cccd152f16b277ec208f82
Date: Sat, 12 Nov 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668255654
