Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385F02109
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 09:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE8EC4339B
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 09:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675848605;
	bh=lbWmS4Ro+NrYuAtf5ky0l6tbFxQhkUzxA01l2cXpGNI=;
	h=To:Subject:From:Date:From;
	b=h5aUaRoR3k6doU9ZMsTUR7EDW5wsxi0nD+QhaxticGn/ZR+0AYeh3Tz5Uax1K3wzj
	 YeEglIYzz7IqeTNuyYKTkavPfT+oU8Thrzh6r1DgdH1Dl4FYgrP1s652qB7SOt9py1
	 V4y7pwYHYpXdujmsP0lO4S+wng10QxL/DZZ98pdXnFY99tHgTwvuMpzaZjvKSTTrrs
	 Vrxb0gmV6b0jas/TDbjg/nkdQVc8OFPjg0shSiwGxkKiC8GqaYycBa2O5Vpj2i901v
	 iYEvbZ818Eta1QpvzCIj/rjwP+EYiU8ryJML1Wnh1tX9nbD4Gb08U+flxCd7A94O0f
	 y/f9C0xpG4s3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC527C05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 09:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167584860575.2657.2816453553368718612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d98a2d1d1c94fd9921b55c72df4399d329a0c49ab54ba920b0b517c68ffcefb
Date: Wed, 08 Feb 2023 09:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675848605
