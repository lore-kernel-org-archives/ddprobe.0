Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D322353A7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87284C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663337453;
	bh=N1qDtEV8vFvArqN0bQzDa+PS4qKQLigDsXpt/lr+ej4=;
	h=To:Subject:From:Date:From;
	b=WI8gEeA/tK+yBxFpdnnKBCjk7e8sz6TkCwxdmjCGgCpl6BW+YxFvsFsSuW2BLSxTj
	 cIz1qUfmQ0pS1RCIY+QTC62uSZvSCyIujIf3cHMHIGlb0ktLcvRY48eSVDedQWgdW6
	 foHTdoAnGh0WHzOmAuWy5pDY1lKVc1bDpxOkKvWq51SlCd7alHqR2vlGI3yKgHpFT3
	 eKQzd3BOUEbw/qDV1vKKl1Pqu4dcqDncqiIZOuetmIU60kEUOcpse/EczI8FrVo1uK
	 lq55qDEH8SUcI+PdzAxLzGICehiuubHRiBrfD8bhP9o7FW8Q4U5b25dh7xHYdRhRl2
	 4qQF+69JmVIPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56808ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166333745334.9568.17494892775036349300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a386fd82db720e319c1ad72cc7ca6d684c7ff8f38c309651e25fd1a5dcde80a
Date: Fri, 16 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663337453
