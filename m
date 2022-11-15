Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C071623A6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CB4C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668489654;
	bh=6ptd9oECYUS58uC4DeTcINXfcN8vo5NGQMoUITs1bug=;
	h=To:Subject:From:Date:From;
	b=EgdykDHS1K9jPbmU2KTnz/SN+uDlpDyFM9Xd3OvddEhOiyy+aTYeoqM5vRtmOWobS
	 VJkXeBCeCoLAKle/nDC+KbNjeX3Ox/aXWWmZ6Kis4m0h93F+i/LDJVxNyAmk/8PVrK
	 FZcI9itSlm+c1SwG0m6Oxlh3udb1zKNd+W5SeFrBwGm8tpQSZX6mp5CGoDgyPUKHkZ
	 PHqOcHZdROxVJU+Hs0v8rcK/Pr8/XL+I+ZhW9LJV56NrHwzHE3m9/14xA4mBaczKuc
	 GFZ5YAk6cvLERrECM37RWG6QwxXqJZNOtWZ/Vxtzcs9FSYNZV0DetjfHMk+cclJK8f
	 kTN/NNX8Z5zMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E705C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166848965431.23312.8424078000603723315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cda03c0b873a5c4f92ca93f63ec2f9fff3cd5cfac832d21b47fc1a3c7bfefc7
Date: Tue, 15 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668489654
