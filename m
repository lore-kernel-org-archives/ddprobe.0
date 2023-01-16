Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA00257A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89100C433F0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673882487;
	bh=Fk/rYYSPqsTETGbg+6bxeg75huQVbYUv9n8xyLad+aU=;
	h=To:Subject:From:Date:From;
	b=ghdn5QdzusqcJWDuvoYECsv8sabL1VrXhj6wZont188gMoEvnDi/b0mL6DmpCbMr+
	 HyTYgVPLzt+cob8m/tow+eyTKXLNnhoDGM1+ZR7oTaTw3FespfLljcwWau8gl+Ora3
	 XCoA9QDWV75sVSiCCKg31oUuev4Qi+dMiPv+TEyNwK44mA1qdRVQri/o5oKhF5KDsQ
	 wnjgV8teN2yeRs+XDzOvhA04h+y5nX7DeQvUNFWnOp1Fy8wPBseO5t/J0N+NBzqQCn
	 Nd/T98nsnUdrqNNfqqedVetYwqTa6LAW5azPb5CHxn7IWv0suR05q8ZsayNndmasIX
	 oAOb+7dPhn6Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED86C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388248742.19968.14121983710563698123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52c9d2c80bf717f8b55948f80f33b312a805f3ea18285c012b43c5fae56e105
Date: Mon, 16 Jan 2023 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673882487
