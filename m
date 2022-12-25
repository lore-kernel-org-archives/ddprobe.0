Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93D0366
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 857B8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671951087;
	bh=apSWD8Jv4AtVTxQ47E+oUhATtMrhJizpNgvc8RoVjh0=;
	h=To:Subject:From:Date:From;
	b=ilnDagUQ7k/bq7ssQkNxD7NQMx8xnov/UtScl50II+om8jb/l/AdCDu4uMa+ZHgBB
	 fzuMAXSygg0dmkFi6RZiuwNBG1FCuRyiG1WJDJSCiEvBod4blMzflxpU87fVjvsBVq
	 nNjccLFcIBmOfiCKfMDIyivB7AuggzWN3Lb9JAAbAr9FDVkCRIw8fK5tY/k8GWqR2+
	 Iuxe8fQYfnemoq7NUxHzJCY1SiswRt+B2QkhIaUx4/Ye+BfoFWtrLyRnTtLC/Vk5qM
	 MFS2oufXurxP9xF4K6vpCvxpkDkP5+Ep7EowKQTalZliKmOcVrC9IOHdy4997HsD+0
	 rCrKBhtBST/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691DAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167195108739.11118.6418125700192446859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337cff3f8a8ccb26450e393347956510542fa3563355a61807d9188e811664d8
Date: Sun, 25 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671951087
