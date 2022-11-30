Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A74AE63DB
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE09C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669826454;
	bh=NmKgD46x+Om+BZy7pDmwhsp0izB2wiaRpJXCJhuqbRg=;
	h=To:Subject:From:Date:From;
	b=R2Tj6UsH68cI9A/y74H4L/dfN8IlR//ndMlb3q/n5iz68Cp1v4Iz00/pOaggwbuCu
	 mWHO04+zZFpKqt/SNbEa9cDxknnUYMe1MGPGraVjbhy0wBP++nO2Cg3w+uuLT98f30
	 Xhf08Dn23Q2aa8EbvHCUwggugN6UBHeDxFfHaIIPwdvqgMlIpq/UfYu+pCLFxpF5kq
	 VQE5c+EQxOBY+Wl3xK+b5uHTYSnPz2p8DAg5Ax7DCmOMEVtDBCe4f9q5xoCvSaLscX
	 Maeb6b2nDENSWPAOeZlWq2eRObSUWgvzYaR9zsvG00CwyKuh4H4VU2E9jhNWU8IRuh
	 LrV+qHJ/jT+mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E07AC433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166982645437.22219.14325702420629495960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6198b99e675ec642940e45f0f4a2dded8516064f9ae8809b79e91f6310509d5d
Date: Wed, 30 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669826454
