Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427657C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 07:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0008BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 07:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685258346;
	bh=EMVztqRCkc0kZfutass+djqGw9sleN730CsdkeHBwFw=;
	h=To:Subject:From:Date:From;
	b=HUxaHLjnpCaKZCOsDdnctNQohCdv7SMjy8L77d9DCs1ZpHmjQun35eLPEr+iueqkR
	 CUtp6rYHJxuqOZliIh1rHZzHpc/1nAKNb6K1RnDNBVfxGZhwWY/NuYml1bbjEy95Bd
	 m7rhrxcCMooot01yfALeare8Dx5+z6g8+ZxDZdvGGEydwOyLYT+YAPUgLsisFlW1J7
	 OWX76Vu8OUbN945KgtgW/t//biIcAmZ7rweUz/XqJ3oFeJNhwMOYo0M2S03SbLtvHS
	 crVw2l6D8uBKIYMlhDBDwWfTBrIZhRBhiVkXWnmYponcDiDpR3KHaAqReE1Mbpx3U+
	 JDK1E/oEeBTLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6652C77B7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 07:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168525834580.12753.11072424826748297695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36cd08dc8097f2a6b38e9a7caf54a699688b8d3770da12496396102631b6cfd
Date: Sun, 28 May 2023 07:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685258345
