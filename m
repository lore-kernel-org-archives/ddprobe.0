Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8FD816
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 01:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7FEC433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 01:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685756285;
	bh=B+Ax9QvB0Nb0Hz7Cf3pQn06ShK2mTYo5zb2js8698hs=;
	h=To:Subject:From:Date:From;
	b=IuBse86DUylCLsbTkn7FlG8/AmwEY3EvQuWJvkWcdj+t/5OcLQjHWpBrq2b9Mqgg+
	 qL85Y0UjyGzPWSRCwmrmnoMlnloiPTmDPK5LU9/vp/AOlbwo7BB4WzR3S5VI5rmfhb
	 3defDIouQfs+iHi3rrLLCfOSwkC/6oUo8D7FVaNBO/aHVWv4pSQxp/XS4EdDYggiZK
	 iatfgB7y2d37TCGMwq64pnqC3A4oLzT8GMSwku1MkGJ0Ky3Z2OYCwZVzgQ16iE/CJL
	 Meq5dfuAh3kvgZUTIbdGOQxjZNpCE6d+QYyKzxZDblhasXSYHquagVKlt8QNbstiam
	 AaC9CEiiNr7yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF51C7EE2C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 01:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168575628572.11823.3699214523632466432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3234d69849627beeb8b728678fd80de94a1c0b07b8096d1f90c0575041e76412
Date: Sat, 03 Jun 2023 01:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685756285
