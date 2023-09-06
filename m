Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B34262B
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 01:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26DCC433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 01:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693962248;
	bh=mU4hUGLKyzp7y0gLNnWoPgYGRL9xe1OJorleGd7aXOA=;
	h=To:Subject:From:Date:From;
	b=nrVJ9LT2/ld0qeq/CFAZdN3V62fBMexCHORgbmwn81qDxIn+kNRAYAu7UEAK65kC1
	 3PfV5PbnqRFWRgztXMCJebvmUc9tYW7ZGYvcXb6WYZUBlIG2Hlf4OW0rb3tS8g2Fz7
	 OmTh0YT4XOsByeVc7caTj3+y8OmedFNvznGCfE3TfQmxdFrSOKTM7/2eWhO5B0nChV
	 JswQRWs1WXhFS96sOxImXSJqNCLC+YnHy15Hn5NZp05rzsz8fLgp0i8NW9QKuMTW1p
	 QVxXYgGUPdsq6bVEZQ4ySsJLLhr3bMEcPUIM1ww1SS2eDINwI0/DM7ceVJqLVIXRO2
	 u+Br3OL5uDggQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D25CCF9E9
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 01:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169396224866.25488.11793062781456815952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e9ee621b96968a5fa709cf6ff7de34e6138fb5e20345b650e5169afdbd7d6b
Date: Wed, 06 Sep 2023 01:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693962248
