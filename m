Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75FC8C18
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBE7C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674080487;
	bh=ato2XN7JZ1rJw0kbfpHKzqcCBvl2udmXFT5Ac5634pI=;
	h=To:Subject:From:Date:From;
	b=i9YHey/OnMDEH4gWVVnhU8Q1MamKjlb5wWMwus+KLTBch7Pb5zCHnBM4yhyXPHaWS
	 9mU0mnj/2X7T1yRxEn+Ny+WMEslW4SqyETKlWwv/SL1T/pqI0iFw09t8RCf52NtxP7
	 nKNRaC5lw0ww1qG+nFUAlbzvi6Eigzx30fc9fVIEJWOkdLe1/IYDwAmcifPhvdxf6L
	 gSpBopKSzp70+WXszOfgS8ReWiYxZs8yExy5xbtnCV95xTDX1L06j0Emm2vuSWXMmt
	 sUYac0nV0Tu62W/txQCx3zqqSScerjJDXusDJqMcH8NyR8tR+9X6bl/z7EXCFEeIC2
	 ngeHB+QUEpGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610EEC32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408048739.9865.11642652292457930404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedfeab0311d85380d6c73aacedeadf32be39c7137572636348a409eda3d1518
Date: Wed, 18 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674080487
