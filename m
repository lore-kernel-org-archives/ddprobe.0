Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C535353A5
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79EE5C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670871087;
	bh=Za11jxiu3KYQ2/+5NBo2J8QoHd6cu09hW2I8+1qx4FQ=;
	h=To:Subject:From:Date:From;
	b=SKZTr+6YP/xUHXAFMGI+VqtXsaHHs00Stm5rd0EL6jz5kcvMVg5wK7baXXaQH+Pan
	 GlJgahAeVn6guN8qzJ7vkoI7hP2Pcvf5psTBT3I8aJuzdpHuEO1vo0q40QQYUgHok/
	 xPIxJDIBX2L21+GCkc3QXC0sV2mcpDS1PqAMIXhUOZxmI+tk8TYQ0MvkMnpqEhTbrR
	 IbAsEHgEEin8MooJLHUUvABC+rT7tG/TdzlyUnHg4jciWrQ9xNgokO+Mf13tnvJRDI
	 C2w96L1bNBrgKKtzGu7HF5QRKO6YlXWSQOWbrlL+8XMXaP9efGyFFQ7wewT9xS5Gq7
	 TOa663oZw5g6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B69C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087108738.6143.2664981824413874559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7138f66824b8f5dacc5760a8e0689977a82754634814bb6aba2e1d7d3f73c693
Date: Mon, 12 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670871087
