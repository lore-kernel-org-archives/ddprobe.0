Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0198F5E
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7578EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668876654;
	bh=WjvIm1mihIGuqtcn27J8N1YRjH/7C8JwJB3KjXsbFyI=;
	h=To:Subject:From:Date:From;
	b=CLwYmYGoknfOLi2RCaxvo+7eSSi/Y9af0CA80jYwkQ5k8RbKUhIrhnnjaiR0Gcl61
	 8b3M5H73IPF9YVyjMBImm/Jbur+3WQ+qTgQ3EBFaDnrvsQXxEOUVYxU7mCbJ2s8tOV
	 APapZ73knmQuh+9fgXZDkPwyT8Xz366jYAIvzw9GUwcj5iaXGODsFKN8fQ4Ml90lgG
	 eZvtmTo0roSVsFPN1gdCC6C4c68mHdHg2n5QPBmAc0ygYjiQON96Zb2xY1zZt8/Yh8
	 U0LwRKDLHpBHU+SUE+edYgMLHkToXv4hGMFHURU+ZtGk0O+HEVb/FfaFBqT6amqrrB
	 jpS5e8W/NvQcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 597C0C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887665435.3861.8855573712422461723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb19646aa8136f52bd6e0b9c995ef6441d3977700cf331fe656dadcff3948a2f
Date: Sat, 19 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668876654
