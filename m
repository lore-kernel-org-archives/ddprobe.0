Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6CC657
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh9t07Gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E59C433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701036496;
	bh=/zGHI/al49p3AWBeZCcNPb6gtoQbFAr+/N25lVzGs0s=;
	h=To:Subject:From:Date:From;
	b=Oh9t07GhblYjXKUDL7xzG9vQJ3ae20j6M9hbI59HmyCgWGa5HsZcRIb+LoFpnM9qm
	 cu3PKmVpvW9MtET/C5FWlDUowAaQrNa2EuCO7q6Pg58qAoOdPgHbjrCi5KxY8TIcnt
	 DrPcCvvLcibkcEQhEPmjSTnGaPb0n4B3SxxGQaAvzLDnzv12TUJeGg/tWCLg8TGe/Q
	 WJkix/369+bMZ5BcYzBXqhCZANXRT7KxPJPO2p8F1bfxmEzqxfGH+v+m89RCyGbpQD
	 UI2cp+/g2djp9rvG+8TdTpWAU37OBR9DEV4NBlI5jWgrqaBmeqgpi+XXpYEdgaTVy/
	 3TeZFQt3zzUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68EB1C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170103649641.25997.10556582536712365414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1761463e7ebb0b404d05c4f3e10c3ac01a91d5d15288221412613067c1e92db6
Date: Sun, 26 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701036496
