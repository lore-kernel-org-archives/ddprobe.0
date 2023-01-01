Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3CD7E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C7C1C433F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672570887;
	bh=SxfFOv/G61ZsdGQoBkoN8wTWB41r3FvEJ6M9QGATsr0=;
	h=To:Subject:From:Date:From;
	b=aQ94OiCFT76pYmhqLJTJ4gQJbe6CZ7Vc2lVttGWZE5KHAaPyQWdphpLoaxeK0DNWh
	 jcCVQKl40sPr7ALt7jzNoz5IRTrXztHS1Dai5BUVa/rCskUj9iGkADmVJcbp9IaDrs
	 kv9fDJTC9iPegRkiNyDmye9NK6LY6rPUO5x8WkjOhz+4NANFHwhyyME/4caQ8mx1bN
	 qfC0REFiDmIfdnGQfMShQoyI7Ft5MZz1C7pSqqv5Qkf+M6AsqiPy6hdSF9J1Fj2Jar
	 fqt6OcK09NpypEf5OehoV0d/2UBoZyzHoKIWA/5hhv8AeOas93sgpXJc3cYGjCwV/7
	 dTdrR9r8Yc1wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61030C3DA79
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167257088737.15947.3650822520064725815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96850eaa5b3679ce039a4211381794186447fa29154a844222e2612f84cf1aa9
Date: Sun, 01 Jan 2023 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672570887
