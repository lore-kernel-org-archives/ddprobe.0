Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535967B
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 23:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3307C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 23:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677369306;
	bh=/BosiDxf/t/8v9pgyYBGRsx0SMYMN6HgSAN0OCGnztU=;
	h=To:Subject:From:Date:From;
	b=LGPNhKZew5xN94revoUkIeJ5hWRRdZcxJZrb40Q2q7BXO2Z0ronr3NC9sUOGTyzna
	 P9AzoLHetBWYs29D9dak5Oxfd6w/dqh9ZRba4eyWVLsJvyWx4+yXf6z7+MeBZj01SE
	 O2bC2btPpmG9ZY2v77l9/fZTMf/0vQFJUJxJAjwKciw8b77vGVVWvCEFgQTOP81LUq
	 VFThFQ3KRTZEXnKbr7WL+iyS4k+p4sAiqg78tRmsNuSiEIEoIZPNTbvIUso5h6Ocdh
	 sNMLtoeFEzANMM7+P/bGBEE+BZkgaOb+esBdEOeBvNw/nSY1UPBdTh3iU0NgGBb5/U
	 bFkFpVy1voAiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D75A2C64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 23:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167736930584.31645.6563505495424382960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75212ed7abdb76362bc1b1ab74fc12eadadc17a580bac6b1377e3de03d7534c4
Date: Sat, 25 Feb 2023 23:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677369305
