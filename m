Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B35AA55
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 20:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC72C433D2
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 20:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684873985;
	bh=6mZSrxVLX2Qm8btJqCDtVWe/Up6P9V1DaFGma4nBIKE=;
	h=To:Subject:From:Date:From;
	b=Fwgucv9F89UX47FD6UXfilugr548jKsNS+2Bi8xRHKFqmg7DxMWsb1zsTQU6AHNr4
	 YyxR3gCkrwBeoD0hkMvPjv1d0gK78sIE3THoJB/xNnyW0Sm0iMjpUZ/SYQY/vnsAMg
	 u6Ub2ruK1IwMMWJOPbKlW0FaitQxlUMNd1DBTrDih9SVudEMiolms17YfxrFnkpCT+
	 gUm4uoBYOB7mdc8y3VNgb5W8xXd0fjZnOr57yqrQtbVWNOhMlzpwsl2mYBRRzxq72R
	 VHKZLabMe53itH6ysTt7Hx5WC46PGOQ1ZkYPVgRVE9QdOXtXkecC+tMgu2GdA7xht7
	 1fS/r2J433Kkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE26FC7EE26
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 20:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168487398576.30232.789215664389851128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ebbea44b0de1dc71393bbe19a6657bbc6c2f568141d8ac3536056778d1e09e
Date: Tue, 23 May 2023 20:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684873985
