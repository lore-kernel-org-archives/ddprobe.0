Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5257B
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA9EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665654053;
	bh=jaGpfzGCEd5sFekuHZjJt1FSfAdBcxqod5rcOKd95EU=;
	h=To:Subject:From:Date:From;
	b=QwIPm+rOxeE99WY1+7bP/3uQFK8q+ZRfoWfM1dYsXc+6GvjIOTtLCsqqDOXTbVJCv
	 JuIa6adWmSVu2uE+GtapwtNcthaLq++owT8eKLGqX61vx1SHMtj4EGn+l32TjRdF8y
	 8obpCwxvA563Bx79xostyUQ9KKbBWPbVnG0Ldfr9bJy2onReUy4TeXmoQBshZRQ5Dd
	 ididAfgL2LQGAWg2YeMCyHev2QNFvkp46lcPs7TTWc6JZAR0HstK2zfmS/oTVNPwjc
	 isHx2evzXmq2lL0asPDhJ1Wuv19Sm6KuSVC/CATNan7v9Su4pZhaCQeBl47POt7IIX
	 a5/0sB9Horw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EA0C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166565405333.19502.3376827151489024860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895c6e152ab5b0999b4b496cd541c68b202c61f85783d53661c042b4ed979d0e
Date: Thu, 13 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665654053
