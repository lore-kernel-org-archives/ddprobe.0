Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482B1111F
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 02:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCQMU7y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BD2C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 02:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697336228;
	bh=cNVYhewjREMAJ5eVDep6ZcYN9cbJxhaJ8Ql5a4U0LpA=;
	h=To:Subject:From:Date:From;
	b=kCQMU7y/tKtOJeUWcOl+Gahe2IrlgPUC2LPvtLRWIKuZDY7EtD5VS9fthqwJDUfvf
	 50qukym5ecBEHFuSABmNr5v2/Pn0T06e9vC4f9xL8YD50kcws9XSy/PVIuwWzrxZsW
	 ycDsb/chSmEWrA3Nx8hiZOKARggt/p7zFRWvppupaE9KXaMgH0kwNnVKtRJApt2AHw
	 Wt+dOpPxQenGYlYlORCYziXPGVqjBB19X9zjjlEeRQrxInbOpauLog90OHvkAhIuDZ
	 6tAATGT4iRXgywchkvDc6lXyWTndB6zC34+67x75ljiSm3rFYf0dOtOVIS/8tu0FHV
	 jBSBQyYI4/ehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A585ECDB465
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 02:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169733622867.12050.9437382756721777731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1a668c7532ae37c45c95ef67cdfa26ac60601139653a04130ae9ed115b04c2
Date: Sun, 15 Oct 2023 02:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697336228
