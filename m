Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F23FC12
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZq0WtrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE9CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697918296;
	bh=o4u6zm6lYdq0Gd/V3TmVFAyf/9kPzJ/yidVs5k2LXjM=;
	h=To:Subject:From:Date:From;
	b=GZq0WtrWmkTJARCUVhbvifQSbv05gRLDp8ILg8lyqxUEFg2IOJq2XnXaZGW7VFQeP
	 Yzz8jrMis+GEwFY0i3LGhwkU8Vsjzz3CIH3I/cVKreckse/BDXESOfPY3NfjSfR9O6
	 3rqFnJwkkeZZFqsnzRA070Lb8m8x6U316+fuOwJUk+XB3Mn1aKDgFT6Tp8qkTSpLjL
	 YxhI20Z0RsOjA1HdjY+N4RmtLOE4/SA/WMFFH/Z2buPcsydxmEN4yl6HhVSM7WoVxn
	 146W5wlgFgy783OK+aWHzOpaueb4KyM6jN6Y7gjbGABbJnCefIKjfsNotnh/fZjEqr
	 724FySW4IdDTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E02C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169791829640.3355.11607151493601962669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b662cb74d30bae83c039dde5a74f095cbd88b5b709e9e549f34b0d7a95da9a
Date: Sat, 21 Oct 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697918296
