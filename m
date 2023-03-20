Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C781846
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 10:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A4CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 10:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679308025;
	bh=+sW2PcX4P/53VnPPWOp5AeVYPH24KPmuSfAw7zOD/8w=;
	h=To:Subject:From:Date:From;
	b=QAVXfIFRw5ommjS9xFTxvaUhf92oxxmmCqMLgAbEtums7fSdgr13CE//cujYzw0hn
	 tmi0awNKIyFIWQnXyLbJUjUIy4jWztMzrgcloqWHCo3cJcIU3FfFco6isVj9V5cp+9
	 nj0LTGR3QVXJamNT708IzgoPGUClWIX6cT+9sKvSbGmrVTSowraZg4oqEhVz/D6QBD
	 rikYcltmmnWGf7vrgUzJlKSgV9cj6upL3wtYv6c/fRLEnPIelGitL+0tfZDMweRJLc
	 cWSkACQ8Ovp/NUlXQZszWA6Brhi3dN/W6seBmrXINyuOsxWcX993ObBiD4mVGNofgZ
	 YSsc4OOuQAJRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB67C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 10:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167930802575.25656.4580122139858288198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba57f49b45daedcc5f60b1c8ab67cd8a3af446302ac4b71247ea0472305ae37
Date: Mon, 20 Mar 2023 10:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679308025
