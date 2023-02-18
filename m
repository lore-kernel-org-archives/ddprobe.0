Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3777836F
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 00:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4886C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 00:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676680505;
	bh=7I80iYWEShLHO5bt8FHXyjfisx2uZKU0JGgNfGPioK0=;
	h=To:Subject:From:Date:From;
	b=QHsiroP1jmpAXm0aJu2D3sK4aofYPQEbVflvonaauRWjPOoGLzzF7NTOkCfAVsONh
	 KivhFxJBfaSMu7+fv+ZqNFiyRISO2OybjiTq9wRPfmx0brNriZi8n+aKkg8ejpD+a7
	 u05/yZm/Nd5e6Ibs3p6bBwKc8scChT5+bQYhWObD3aTRoiA4tgjDhwcDfoz/hqbXpV
	 4qrCyEKBLVWMsdhTmIHBWqvIom4/fm3EDUnCQ9vAzZQz7iYcTpn1YQIeOfbfnAu6DS
	 ovUrmO/QqoRGqWMG1XbZHMMdmZZGw3nUFpx/kOTBZcj3Zp3+cRD5OULkNZC15lV2Cr
	 vuPHQWSKmiboA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE36C636D6
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 00:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167668050574.20908.17888762679498715450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847932bc70ee067388574e6b143f13010066cb2847390345ac88cacf42bc6f78
Date: Sat, 18 Feb 2023 00:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676680505
