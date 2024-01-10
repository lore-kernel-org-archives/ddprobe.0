Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0BE22063
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNSilYAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88A5FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704931096;
	bh=KS0LsTS+ctEajYKSGP+Zvy4hRzzzszGg4Wz8u/vWYY8=;
	h=To:Subject:From:Date:From;
	b=NNSilYAPFLgCfjOgBk9u8sS0N89DloDwd8Fp6GrY0BC779kYUHAIerETz/K0hlLaK
	 fSyhi2c+jFGEs4zMGrMgNkxWsHkwTFkP2CMUS4ghPK054dUaS2UlzXdsIiUDaj5UpB
	 LJSVJvaaOuJO9SJ2C/+IpatRo4tqam8aFQt46jbpAntEolZjXpn7j8OORyfhTjsnzX
	 EF7bzonkxuE314Pw0MhAt4vxzs8TyQytdo1zmyK1S2mN1igeDTGTGlU+J/7bBPNx9v
	 L2WXp0PxAfsh2MfOxqG6EwR0wwsMU5rN0eB80rSkG1bdjQ+6MnbMwMgweivUWDLXgU
	 IYMP35naZI/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E07BC4707B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170493109641.13361.10545489793466384963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df834b8790d80482f020c050a51ba77b4fd444447ceb2846f09dd775369bce23
Date: Wed, 10 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704931096
