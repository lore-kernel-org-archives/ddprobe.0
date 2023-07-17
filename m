Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656E4C2C2
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 23:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFEFC433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 23:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689637868;
	bh=vmDrL64TJQEg/xFYbb6+npP78Kxe1M9rZPP/ESoUu+g=;
	h=To:Subject:From:Date:From;
	b=A0jx0Un6jY6fgB2egpLYHKtK8mfed+Tx/9kEzgk34Uust9VEkYqPedB/h3CGPZFuC
	 yafYm98C5ZDnGxiFAkLB/s+6tXQ3HWHzc/kwfAEecYgcRsdEC1Mg/H0pH4tXw+6ukp
	 d/DtJFuzVv0458auIbVGoEym7BApBs08WGIzSK09FthmB6gjwWk7DJhIDFx2rtYiXi
	 BC2FuOGgO9iftu1MfRw/l/FwypoOZbjRlbe/WESjnCgf7UYhWTgLz33r3zOzftKudh
	 p+BQaOEanX7PzXmDoOb/iHA9VfnZIAaBsRpnzSA61OYSCUEzYLuTtluaU3THCIzLO6
	 byUZLnVn07X5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB40AEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 23:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168963786869.22938.12130040658569300942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8cf148dbe27b46775d394c872e25349ad98f2a360362f61ba2bb551b089ca8
Date: Mon, 17 Jul 2023 23:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689637868
