Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1CA10F9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD01C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687869188;
	bh=lyEqMcUOCVrqSeZ8lhcjT1p/ICug3LMbIPFPxoEUcho=;
	h=To:Subject:From:Date:From;
	b=VON+Ru8VUI61s0mlesEK8pheCLFuYeFeQ1XiEfpIAS5u/6uDYPNlaZ8qJyDZEYCu4
	 e/ikt+CdvMr77hEIp8Ymy2sTqB5sc4sCADeJ/kdAS6ulnyEJFRs8g/M6aJWbEnr7vi
	 Cq/ZRLPA+73w9CMb0iq1NmQrsvd3Pu4UgED7zmjH6JVsxYnhqoHzxkeysui0glVWWL
	 oF6uxGUk+iEB48c019uoxSs9jFRtsHZXKeakhS+jDJK8NFAdsYCtkFVcKN3GspNey1
	 omXSO2VmSTL2uCueh2nOTBsoGHP0nsGfhBip/8+BzH77+4WNTFJPEYEEl1UvZGa1+R
	 XB4P6AfOrMscw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6BFEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786918871.19163.5440717497583290415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febc68d18461ae228ccdf0e53ad153320cd177dfd5d0025ebbc53e4ebb70de01
Date: Tue, 27 Jun 2023 12:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687869188
