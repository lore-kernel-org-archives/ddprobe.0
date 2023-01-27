Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E83290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A1FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674829385;
	bh=Mdxi0RwZ+7OQco24ts2Y9N9Gc4pzZ9AV0G33PpNY6Zc=;
	h=To:Subject:From:Date:From;
	b=lApFRKCP07YQBD4zN4gopp6CwOC1aJZ2+pra+qXjwPW+GoD7W2hh2RpevVzxWyS0V
	 Pgg5f41a10GJwSVjUGDEaagSrC7jfYFIbTDq7UB4SBC+4FJgQBW75HodznFqFQpwmj
	 6WhMLxwsntYS16m/dGVRxv6oW0z7SsK+IbaGmJxojGBOcSxomsjSd5DCXw1f4CAJ10
	 AdODjniEaMHfZXEjU1O2AMHpZZCgnsOodrNNo+UANw7Hw6hBng/Zm6s+B1e+022iVa
	 zoqhuFRBx33c4Zx0ieokT8KjiexEiivVbJ5vvIK1/DO6cRii+V5L6Eej2gRaH8YQah
	 jbSDtxfCsi+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7493C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167482938573.31683.14459447828332185727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8532c18b5af92c07d8a57a03161e51bc20f86975e3ff151e08cebda58387b714
Date: Fri, 27 Jan 2023 14:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674829385
