Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98C3805
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E72BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671453087;
	bh=9+yCGEYaN7XcEW6+7dtyrVbdBx3EqqFJS+eM/89F0l4=;
	h=To:Subject:From:Date:From;
	b=R+b4WMS3dqg/ciP1GTsJWJv+DZqKv8jNVpT5u71L1+0QkfZlptdEkqheIToxuptBC
	 AzIh635xKPgVjdaPbmBY2YbB5V1usbVzFVTnzT2gITGlCcSPt4qmcpXWyT24W/rH+G
	 ge3/hjV8Xe1sl94g2qbHGY7dsz72HMvnHp2lEYxoq+bB4em0SD8hxzTz0iO6t6kZt3
	 m5lPBAmbJeFvGTmWWnKXL3VMUbR6G9zjmdLSc97tCUawLKRV/NH2EVsxh6Hcns4V0+
	 sXSWdmAe0dQVePgySY4x1RGkVEHYRujNXoqVpdoaPkktO3mHpO0cSS8ogWaJcikVq3
	 aFIlVFYymohWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7695BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167145308747.23280.14331349888787961520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2052ecd2031db4c0f9bb685dd8933e53c848eb762a57feb9f9452faeb3a5a4
Date: Mon, 19 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671453087
