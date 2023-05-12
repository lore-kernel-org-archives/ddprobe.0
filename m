Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517152597
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 09:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDFA7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 09:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683882906;
	bh=hBTXAzbyQ2bZyfYEKgqThX/DMqUVCuKEoSLXMa5Fa5k=;
	h=To:Subject:From:Date:From;
	b=sWAhRuVVqtVmS7rCb5ac5drQhwzuRuahTX/28Ocq1VHviQzBjYuCy20BM+1E0FvEa
	 WhEFi1vN3CN1fuBCgFAvCPurvb/5pn5rog1D40+7OPMjrHmkq5QhTl4E5f3dBpyc6M
	 CEo5NYlubmNS/sFv5iG68jfYmruFI3z0HBs3x4FJpKiNaGxgZ39O1TjeEp4hUlnc8G
	 gDa5h1WFbx7Mgol3LofUI+HI+Hqf5mVUEbp3V/6IBTytkWosFKyrrc+ofE7e3pEMxy
	 SyvlGAIfN8ynrPQdiE8z4qhuzhQ7rVWZ6biplgYby24PXyY/BrmtsV4N6l9ao0glew
	 d8B8uE59pjKPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4E3C77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 09:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168388290580.24562.16371599743577813558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e920fb76b5cfaeed1cf0d16fbadaf90ec9ef6e70e8c221ccd2b4c3a41f6a754e
Date: Fri, 12 May 2023 09:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683882905
