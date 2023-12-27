Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C76047F5B
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J91+LIaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846E5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703711296;
	bh=eLpOsW/XOoiNuaf89tm1DSqqfYAoWlhnXYY1fEpZgRc=;
	h=To:Subject:From:Date:From;
	b=J91+LIawqc2ULYqRfjuJaoOKYOjCOTwEZAyVorxXDW2G9KUGJNrIbLuJFOF3m3Khs
	 3xtrhpCj37sdKcyIhSw/x2BHdtp8hxnEnJ90rPV+5hr89jLMULGTA8wUzBBvVMu58R
	 kGM4oQAfaPssWKjgNDvhAkPA/vTd2GXjehu2C+A7XXUWNhTQDSmGZq8a3C0zHnL9+z
	 3vbKNRICqE1/Ay8lelJcpn6abUI+7daMq3WtQnOg4F5CVa1FkFps7atT1qZ5ZaDOIO
	 UY+kAOqhCmafLHUFsi8DB0WIMOEeT2/Ci+Wgnd+KG9Mx20V0i38Pzh6O9gSxgCcwv9
	 QSsCfSPN8p3kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A8AC46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170371129640.6669.15568632476147841407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc89f748a997d3e98b6433e9578348cc5636268f7bb8dbc3d21dcb6645700b32
Date: Wed, 27 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703711296
