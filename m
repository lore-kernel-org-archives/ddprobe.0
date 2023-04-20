Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3585A4432
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 09:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB736C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 09:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681981565;
	bh=y4deWElrCWPXAdsUERMBhnfo+mn8Y48u57VJ1QBjFB8=;
	h=To:Subject:From:Date:From;
	b=C8vNkyPdP8MBdWbiefMq9wsIdENAeZGS4EhZed7d1jZtDiP+NOcPwFyCPHRIkTLRC
	 CKFT7aL9N8ck5hXpQ5B2ePagc58v/3ihTyGlwcet1l0sAAENVkGyhbk8fi4d7l5fJ0
	 0xaCPjmm+701U034FpCRyOZa5jES2jMjJ3p2dBvt/8pvIqJ1jIBpBVhodooOkVL8cx
	 XUJCHyUMrnCDZ33ZB5smR3+la3QuHSpw9jWHFNhN435FhBF+AAmrUMEGtqWqsIwTVx
	 ov/V/VDrATG043JPweMzycKHO9U2IkfStlySTABiPyyVCjYcmSu+gKNjmBe/Qiu+tL
	 SFZsxeZ4pSxmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5C7C77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 09:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168198156575.18100.3546842328245427942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d82ad4d55e24fc645ac1bc488c73e63e1d75249f330d34c0540385faa2a2bb5
Date: Thu, 20 Apr 2023 09:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681981565
