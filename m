Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF94664F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B7CDC433F0
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672081287;
	bh=PIFCZXMYINmg4JLcr8dNsHMsdaC1a1pxzST9o6ZicT8=;
	h=To:Subject:From:Date:From;
	b=frVym7uVtXfHUaz4B7DI6cZYxT2Bf/hd3EwOATRoT3XOS53ejxt3kJroaUQysVIbm
	 WBcRIUBpMrgfSvnkjO7QHa/JvdRJh6C6jXjkDsMzD+zMLcos8JDb/BPp0ul5mfPGLe
	 73pJRkD+jnJrBn3N7qkgAdl0CGiEMWVu8W3jCaAKNrcjmZ4Rj4eEUEbKKJFmluYYry
	 TR13eQNG5Rxzzcm6cr07YxQhxteoiDsv+jeUuEIj03DBC8e1qiinAGTiwz7iTJ2MH/
	 P2bvSgTV1BQlKBAEvISy6htI314lcI5c3ax6kFSUVmqYXtT/2jz+bYCcKjxqG9vlfh
	 Qd7fZkRorW77g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E444C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167208128740.14247.10932296066135235853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704a699896abfcbb821b0a8f375ec39179b4e5b8d00b79f20a43bff1088dec13
Date: Mon, 26 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672081287
