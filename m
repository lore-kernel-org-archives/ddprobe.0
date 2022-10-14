Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70DE2F5B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7A8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665772853;
	bh=yj5lwETjYN2yJuw/q9dyp5Z8JkK208AKSeh1ndPyTMM=;
	h=To:Subject:From:Date:From;
	b=gx9uJZO/hgiCJojES3E2gc+c0BxcwYj3aPMF7NkPHq7TITnXw3HGAArC1pIQeyGoQ
	 E+6OZds1I3plXfMzu2EUHs/SbM+De3+aFZVhyMvuJKAg+adObmWBDSr46Q9VHkTSBp
	 jKWiIUPelpa4KmTF6OmtrvUuIJ7TPEEq7ChdSefmfM4Q+Qnvwy7g3Ry/akp4T2SplJ
	 MEJyZzJQKi3gRxYAEeJdgCuM+E+ZJk/VkXwOybfyozSAYTG/Mhn2Rm38FXptev+tNJ
	 rCoO81un0qIUkHzD76v9nRRUaOeKcCYTZboZWa/0ksOvD6eQlf4moXAhbjsXsuIpUC
	 gShQXGdeui3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABA8C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577285336.7200.7006187832921034036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d99f33e03603be07dd0a5ce3410f2eadf1bbbeb3d716166994de5f14f866a7
Date: Fri, 14 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665772853
