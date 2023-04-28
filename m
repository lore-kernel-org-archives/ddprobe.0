Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37482847B
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 17:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD68CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 17:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682703905;
	bh=UammDK63/mXnRgS1jmJitrBN3NPESMEAOzyawNAY1KQ=;
	h=To:Subject:From:Date:From;
	b=hcx6us6KP8xznkdpCTfBGhKj3/OazkX4/n1jmprC1MeXSlBdFOX8qhWfeKl9Gr1Cu
	 qgHo0gw5cuLFTt2zMprpTO/JiEIbFY7T5D863YTA4TvA1ASfvZiZWoF7+9FZNv2FSb
	 8RzA91hhOlvqtaAN/Dgjm0YOfbaM31TpjPJDSOl6zMNdlnjZDBx3qCwjS0NkmbJxXW
	 LVaz4ALKsSa37N6paMz9hSeE8GsLA8WA9wZquO+2JcEuugFPXaQPuPTbTDsZ+sCTzM
	 MQbWibZ/dNWqFjxP47Z9SunpjsQNPqBN3WfWh+RVDBeQE2hNIQNMVQAqDGL4TvLV6O
	 CElL1zuyxvV/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBFC4C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 17:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168270390575.31973.11686056075883165206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4fbdb83f2b9d5181d5e7e5f131ff5585ed9ec1bc391881d4270c1e6a013cd7
Date: Fri, 28 Apr 2023 17:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682703905
