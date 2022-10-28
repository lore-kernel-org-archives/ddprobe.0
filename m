Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82D11FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E860C433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666948854;
	bh=BaowTrxVpxp68zPvVZoFMh8aFFuOIAzx64indtd16Yg=;
	h=To:Subject:From:Date:From;
	b=sYlUACHHxsFzSyU4sJPu6gUKHugF2w6rcGDbuHZg7d0Znc+/xB4Q3PHbuW9Nabi9q
	 EI2mYQvC36Vmwk0gGaZb5nBfMQrNtgyg3DgbDkLVouUFxTfVNwLdCbbHTJARTdcv7i
	 oE9ldVx+hwHYyHY5vsogEa7pRJSOB/9la+r7uqaGRXIvHglqDH1ZHcY7r0b00U2snd
	 KEZ3ufwkiKL2avlDQae2UDu+Vck1a968b6nyd+6zBA9RaH4Wb/pPZut4HfRIn040dL
	 Qo6SMjSrsvEowiKWIoAb1RAjAUHCkm9uohQk9Tox3iz3JOdv4EdxO12JK11XHkVPTp
	 GCmWkvQBj3z0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5479EECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694885433.23602.17032190289005696291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abee485b700913dcb458e823637bc25ee984a1c394d1fcc367b4c042ef84f9e3
Date: Fri, 28 Oct 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666948854
