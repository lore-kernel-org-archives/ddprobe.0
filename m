Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35181C2B
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE46C433F0
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672306287;
	bh=e2oq30L84nNzE0hftZozYRpGBCr2Bsk2iG/m5WzTriY=;
	h=To:Subject:From:Date:From;
	b=Oip5PUHhcTgOGuTBGg05OMEVAcIrMQ94cZy23LUFKLTO48R+C1MK8opzYpH4RgIA1
	 mNZY+qv8arLYreUbLaL/WU7UPYIgUUHAjsvgZ84wyY/P0UlN7FmNYyoQ3v1lbLTjjv
	 HlWqJS+zVV3vVMX9kipmLz81EVruww8Q038cpllyi3DhnW77YqfBydQJ1Qjnoz9yeN
	 y8Yi0H/mjucLDT2PbzxpfOJQvWdT1ASuJMCg5U59+c9dtAyhJVTzlGRrKXOy1Jt+b4
	 xlo/TP17dcWHUvAyoogiDK3RsYpa7I91AmcniZIYVIYWO1IB3FtLWjyVIa8oecjTBa
	 Jm6XXubLScSzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB5EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167230628743.5421.15139732003055342052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d5075816c2911c37d6825f05e3c1a4a23a5c10b239d7e73478d7cbf8dc8e1f
Date: Thu, 29 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672306287
