Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB05B10F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76669C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670667687;
	bh=GujzJ/o49X75Ij5gclhLCO3GpAbf/Ou6tEZaGgXZc08=;
	h=To:Subject:From:Date:From;
	b=nCFsR1rMYuoWrpMs5CW/0pbvo08N9I6xwIi6VCyHBHOP9LuFhEVKfbprmT3+MECBX
	 BGuS8u4o91gSQYCn9WJFNsQScS0+1p6hpgp7DpzMcgmUyWh7Nh6KOCqi5+VoZNcpTB
	 LHEzE51ETkM6kNYv9/hiUxCmAn+22+SUqVB5dcbebRoTi2LYhjcRgyREapfmCmCMwq
	 r+/Jf4OdaIRtD7da5T+Sl3h9Y1w/0Pvvx7TLdPf48lQzzrVR3HfWcdzeIC0PiafKpi
	 0gMeHcJda7JD4xCj2C1eu19wP6vSwB1xlFpqVeK8r25U+3nW4mI3h7pdcNpXx3jgs3
	 l8Z78e4yNPkPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB90C10F1B
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066768738.21086.17167590370321961802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e57eb27206b3fa448c5fcefe500f66f16f1af13580ca661ea9be0d338d0378
Date: Sat, 10 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670667687
