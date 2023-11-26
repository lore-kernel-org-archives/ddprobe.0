Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0A77E
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5mo0lxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89EE3C433AD
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700965696;
	bh=cmtlgWNNBIv1VSNpSXUIEGu9puPr44oLBB6Mf2PBjF0=;
	h=To:Subject:From:Date:From;
	b=a5mo0lxeI9kt6fgqppX3FHHaklpYDvQHJntiQOU6eC/TWEmE0E5aNKClfnRNefUNL
	 wYOXBcbllbSLHkKF6xY2L2pxA7KeVxgGG+hIKDDkFNw353qJScH6egv+W0pmJpE5iS
	 iB4VzrsmII5JcUUgLyyZoSAfOZf1J6nw4nBfOk1CaY4pk+6Bg3xtE+o4b/EQYptHTZ
	 wg3eupc9D0e0DTvBNZrhffx9q4LPwWQ1gkP2E/8m/7BHuR3vEPKadQ1zs+jZb9LuyO
	 G0faY6a5GOH1C8ZG/omJhvxeyYqLupaEi2L9SWJExYXWr8otEyHqXn4iMYtXDxCF2t
	 yPgEoM1VurAFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE9AC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170096569640.16594.4340693002600642012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca633cf6bb935457806cf6462b1a3bb860479efafddb61dccdba076c0ad6b097
Date: Sun, 26 Nov 2023 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700965696
