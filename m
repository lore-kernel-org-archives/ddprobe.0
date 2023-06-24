Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9ED3C3C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 18:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC194C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687632788;
	bh=URS3EmJnTSl5FWDLl6fSa3SeCskOaq+IeFe+WlUKeLg=;
	h=To:Subject:From:Date:From;
	b=ojb5rc1zzx//jvfpK3FK9eZDFxRXazRBaaMBkvZdghg9+VMhDr+J+YKNkHLB0i1kA
	 1Dt/pibvC+LYijQTSzJx3JvDrQfOEt0D8yxaqhwvp2NQVeS9b1Z9G+Y5vxcw25OE79
	 /YGarCkV9nbwEZwDkRy/ShUHIBSGLUlUh9MlxgCRYSxvPDsVkmjdHICr2qBSpiXysw
	 3yNZXi7Wm3r/25JevKozDZxA9Kx+8gshXsiv9QxO75ZQEsXFvY7AqQ6rBmBVR651gb
	 DoMxIKF1t7ob1rLrIBqaiodmToET+l95oPUxASZLtcyQebfYWLBXxHPYsBHbt0eNMu
	 hWB2s2+qOh2lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4BDEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 18:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763278868.18958.3059920487391091604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1359a8d9431598d181444b515123d176e73ff50f3856664541b4d970f5ebb2b0
Date: Sat, 24 Jun 2023 18:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687632788
