Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3C32F2F
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 21:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0955DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 21:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676497146;
	bh=rHmySs2K1l+C7MfjeJ0yz9gzgKXNG7sjWed4QWGa7xE=;
	h=To:Subject:From:Date:From;
	b=mWtQ7j0KQAhecR4TdGi62ESsF72VvLrPE/COlc0wjzI841mIq2NnrDfc9eo+s7rAz
	 v2vTihvlhy5oT0ChneiXUPraxtpq48W/TzXl/Z7FH/K8rQ15GQ4BLkQi5hKTXUaLzf
	 AV/uyfJeRcVLBf8Lqcda+BzbXqtxm320Nn0VI2mmltW+IC7N9t7bcJ+ABlpcQBKK9I
	 76TkZCdTT/EdfGtx5zhwoD/0GB3JTPnkkdEaFflcp5fOh6n83+d64BHponFQ+CktaI
	 aGQRW8NIhR68QZzaOzYCBTAOBn3WjynbDA0DzZ5XVq6wlOeoyWxH0O+9+ucwyLpQVe
	 GzYns0ArDjLFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9A06C636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 21:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167649714587.11437.7503851941728509678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a960965b8e6fcd58c268fc652290da909d621a4dc49858b8e68cbe2fd3d171
Date: Wed, 15 Feb 2023 21:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676497145
