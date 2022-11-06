Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFD1185F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71368C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667731254;
	bh=xn50utx6mfEAs4VPQw71B9+bZheSozFP6mfXACarV9s=;
	h=To:Subject:From:Date:From;
	b=PVFZ9kG0wdIPxbWlodDxV2p42QN7sWVeY7I6liipSDqzcHbDup4eQbVkP7ABfzR/U
	 bP1XgNPRfW2bMaJ+WE1ItyYSbv9c9o25wLCejxkZW+Q3XapE+jrpE0atDo9dmTJWxF
	 fyfBU3y3HqrXpRDiddCQpl3XZEzDhm8PA3WfUS/lAU8U1iY2QN90CCJzyAoHzlqlhU
	 //x/ygo876QQzAylUab7xwnSjP7omtqOzsQ+th9QMP7wp1sc0A2uRD4Zt7fu7IeVFd
	 DJ46I/McSCUWdKP9uldUZYSkXUogO41IOj2wjgz3KbLAMza5h9eUnZc1iIlV5cn1ov
	 gufFUyFUnpYEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539BEC433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166773125433.19040.7804865153517696001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f51c488054de5a9c9b182833604743d69f18dfae2ca77c38274751a717f02dd
Date: Sun, 06 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667731254
