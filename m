Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5175FBA5E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8920C433CA
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688028188;
	bh=f4HRMDzi/CPH57aIk+UZpq2x+e0KNM9zBgkEZU09X0g=;
	h=To:Subject:From:Date:From;
	b=tGMbMc/MjEn/b72rXdKg9E27aI9hd2urSceDSoiPhjoEjPot4l5Q6HiBXixFhMOaM
	 A9fG6YofmyAp3LY1TBsbK1eOEHZmR4EJjujKmdr8bZWoTI/iEB+9HsRNf3yPhnUDfY
	 ohYIHC7sVIiImd+cKeODbxW1j1IuKvvfZWh5CWlsX5GyS+1DeBbkZjXwTGjrASRUKZ
	 srEOPIXj3L5ItNTui9xdacgM70tBHZE88+cWeMxCvEBf5pAKZxkjsE00xgSSIYInTZ
	 NXC55rovDsFmT/U3Np/yGmHq2c22aQSpKBJGVHPoOi9OPBOuCBEZek/LLbiI+ZMFJA
	 sYo4wkr1qxb1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09C6EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 08:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168802818871.18053.12560897012574855500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290375a6317e28d6919d13655bdd445a31a8f240abbf6b374f61f569c347b965
Date: Thu, 29 Jun 2023 08:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688028188
