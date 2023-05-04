Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641F5A2D
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 10:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03246C433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 10:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683195066;
	bh=D5Ja3CBD8bL5BomEWr4Uc1qmX6ThQRAPCIo3RhfEaWo=;
	h=To:Subject:From:Date:From;
	b=RiJ/Z1+ycfgOrcukHbCLUw9Ovg/XrYKo0mrViYusiqDBRsZo9FAMNmxW3Buj9oDWs
	 eB/+qq84SxfOLOd3gx0W5aGGSpwVKuuNGsyQCMThSJMhwBf5KLUw4vee4Q4Dh6pq41
	 rweFTw+mEofFZbPF6pxGgSITmNsiej+kGt1+A6pMlUQxLBxWfbIGBKFK+jMWhWJjcw
	 eZFHPVwcJ0eKqUUEhEMWR7wD4aue1UZ5Fd4wm0uTt1RY/8Pf5HEc8kGvofB8+dFyKK
	 w51iGXBVVf/W6jkF646ajcAIk/FIvQW7MtR28mOFlmSdd8u62/5ASbeUu3CxlkM0sy
	 hAM3HbgVSCj8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF16EC77B78
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 10:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168319506583.2301.8974223199209714868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144d8511c3b4325635b698c677d97c14e1493df39787cf0423060038d59d161b
Date: Thu, 04 May 2023 10:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683195065
