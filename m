Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D81748D
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 16:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqu0CkH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E4AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 16:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697388428;
	bh=LuuCLy9vv7LPNWhFX0PF03uaLPxyJX2qPT6Kd0VXxAA=;
	h=To:Subject:From:Date:From;
	b=bqu0CkH5M3/9rJl6jssmi2G5bE/jQMt1fcVbvaOa4kp84JJFGaPemJvYOQrRxrv4e
	 i+yDBk0AFNpA1S9xL0y9lPRs9ReENdX9InIde+W/TLC6iwxBr9LEKnThL0aWmzcPzf
	 x/FhAoWayNuhDOnoPLlXrKegiSCC1Obhzvxo6IcHp5U4Fv1f2qwIcP1txbOYuGP246
	 nehv61bbgjrpAOZH1LVq+V3fYciU6VIazHqY9yIZ/2mJOzaFYZekjy0wNxs3iLvvDq
	 JKSR1B8EjunLsgX7PVF+7nRL3GmoQdPES2UaYPbBf1AF2gr705Pwndv6MqB72Isy2l
	 IWzxedk5bMVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8239CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 16:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169738842865.27637.12523303680412158397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b68e14890d4c3ffb908b3c145f3d704a1df0e8a157cfb12d5f395bfa347c77e5
Date: Sun, 15 Oct 2023 16:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697388428
