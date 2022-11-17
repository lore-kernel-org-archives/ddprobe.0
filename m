Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64E015CE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85CDFC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668660654;
	bh=Od5Xvl4OQT4tpPuAXvzi82dB0hwJDOoDC6ygSe8ygrM=;
	h=To:Subject:From:Date:From;
	b=kczjLQS+0AvMwEx2OpSb29CMVOxzqBQ0o44hsM9K6jMlziYV0PAgyWRVTgPz6HwlL
	 FVrB0/FpM1BZeEHcxG513W3y1jlPLIY8nV1Nisf2M3nOsBHzr6dmisGfnMDnZTl55y
	 j9PY/W74QFw46mSieH9ZwOLd0tk35Lw65Cqtpph8dHGtREk1xbpeLAkCPnjtVnB9V0
	 TTEDFoIYWFninfu+3wsKVZo8q4OxmLSvQqHdrCAcTZkNvf2S2CvxSsWXSTl28dzXdB
	 3qQtu/baRCKWDMgOfHbjT4nYnQ2MjUdd02e9rUE9mO6k6hWYgG8UUmpJKgyNvrCmHt
	 2Vd1sPz/wwYDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E26C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866065439.20402.1504553192389168020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a33c4fadd4e77c3664bd20266b83aeb51d0d076627b5242d58899651af25770
Date: Thu, 17 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668660654
