Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81495E568
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 21:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFB57C433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 21:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689197349;
	bh=myzamqdjMdrPliE2CjxZIiv/MgFV4tYIeYlB2WEpTMs=;
	h=To:Subject:From:Date:From;
	b=pqeKXx+Ql46TfGwn3hqnyrD/+VrTjNqrvr0o0qpVAUkwOA4I2d4G0Y1AybN2AlGK9
	 X4+z281TC7P0XitMRj/LsAJiMOCeqwpn04JK1Q0lGtDDUhxiJ2z+yQDgiydOqb/hPP
	 3rSUaCxna6OfMnOURZifEaQ7Y26bnwCEr30Fw15xzsn481pQG1we/0d5V7aKfn0PrF
	 feBL4Sz0MXZAlSu8oLHsHmotgLRU2wxX8FOJNlw0txUuA5vWy9Y9C6MpCHatz2W7Np
	 igbIfK4B561le05lXsrhRoopuAwdq4Je9fQ/BRIVT6hHwOrwBnGzdpPZ3UEQNxFzVG
	 dodNcuOZ69bGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBAB9EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 21:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168919734880.16595.761372655158877341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e4c8887788b60c9f02ff4414534086af874c2373a407947c7eb1fb9c6b3b04
Date: Wed, 12 Jul 2023 21:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689197348
