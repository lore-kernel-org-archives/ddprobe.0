Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BE4624
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672089687;
	bh=OhBU3Y2BydDzlvNWRKjUswKxMUqVj6Hh4FkfkhQEafs=;
	h=To:Subject:From:Date:From;
	b=V+SjsCMWBh4Ka9tY8NTOig8tGvqK5isumzJwVx5KZs3kMcIKfrAyCW8R2cWMXcojv
	 6oL3orjcO2aVDpSpqVLkLCG8mjc4D4jKbXheB59u27RjrSg53dXTZFfPfKFHoOC8hp
	 /StLwd5yt3v9qSduF2rkr9LaOgqdc9T72ynzIB/N6Mm0rTzlnF7ynmEXYt44kFnYSb
	 7fTDiASSxK0QH0/+HwJAQzrjCx39938XizRrCt39O4jbq0Bat0dRDrFNwma+HAk0hV
	 G3bGWxefIwCH4QKkcGbUdSncdg7KP0a4L/7YECBUJuJEeNacNpdEh/RQ1yvCFS7CFd
	 oBkKPIpJ/lXHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 858D7C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167208968750.7710.11805494936315047668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a98f68f72576ad14a2ba56cfcd60caf74f1bee593f87d19c694fb4f883be28
Date: Mon, 26 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672089687
