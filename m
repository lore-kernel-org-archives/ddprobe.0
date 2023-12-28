Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F3CF4E1
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnFGLQWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BC92C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703779096;
	bh=JJ+b7PVZ3UrHWrr+BjegQr14TViAmwVSAJ54JTR8JR0=;
	h=To:Subject:From:Date:From;
	b=LnFGLQWpAc4LVu6ssCUdUM168BuH+FXDlKZScXK8Qu6hrW+Rzk2784UENeDPXUxPb
	 hVXe3WXRSCmTr4fOLHgLf6JaNrpT3De+iE5BpK4rSrJNnl0hIkeI6JWccROyXEoQIq
	 1fsGHFSWIDDtcg/0kcxXnTrz0XfzA08S9RP0+a2BnPulwxyNYGZPCSoPEaUoCA2vUe
	 bxP9/rV6qqs2Bf9XKY+q8mtthBXwGE6X86M7NrEekvwi8g5buZS/239hFkk+tReBVg
	 iiMVm9tO5ie8cVzokdqpg9XHCT4BAd9Nbvlq6IghzWf1Pz2xQOwv83sDIXllnlVw5g
	 5UVFQ/lIMzJZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE56C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170377909641.24829.3825224094688932033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e0872733529d3a091f0ee199e3c231ded64f738f2cea1b755c3fb6690acea9
Date: Thu, 28 Dec 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703779096
