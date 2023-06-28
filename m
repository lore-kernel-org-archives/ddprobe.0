Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788A6322E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 16:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA780C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687969988;
	bh=WhNcZjBf5DS6fvI4gFjr1wi2M17gJ7iZWksxyk9yqHs=;
	h=To:Subject:From:Date:From;
	b=dJSPaTyJ7JSgeyuyEZhhimhrEV4FxnVrw70Br043yTY9AZuS0MkG/fz6bDAFEoZf4
	 6NbeXl83Os+wizSiSiRrgh/ROlHev8Gy4NaT8a8qKiiELaOrp544B/jZnGL/gY3Mek
	 3Hjck4okUsc2Kx7dZs4O5tE+SgESYBT+F8c+4GLqz7xFEGh16HXr/4QDvljH7NROd9
	 ZT1hc7hRGnSmxggf+8YM8mmO/mXjbnxvsgYkI9rDpSh2QqDRSfe/5C3IrQjkrGM8hZ
	 lb4VmNaXcMukF+4k35RNhZFIW0Ia7otMB4vpQ1H952UxN7rwwTxck1qTK2bEl4DK0z
	 co0ild4ibDSpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76E8EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168796998873.19558.15308310349658151555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53f8695cb663264ede38481ce9d9fde7291b7d57126d63fc755676f3b951fd0
Date: Wed, 28 Jun 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687969988
