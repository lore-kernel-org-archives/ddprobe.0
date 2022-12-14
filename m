Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E311F20E6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95364C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671003687;
	bh=LsDhN5xzgAnpEl+d/buxxbr7lukyEukt6QZXnkiqzv0=;
	h=To:Subject:From:Date:From;
	b=qfuF8gTd4/gZW9GCVCVtahP0JX/BQuzNWsP1gkxh+q+/UhC0SqZ0oKbkmqnaZ6osZ
	 Ke3EZMUUO32nhaSublw6ZOkp2FkvZijhY57ovxtMD42cj0f9od3ne0kiu3ha7NGKXZ
	 osChHpzHFV5zcF0Z6AVXcMeqFmRdCJ9B2ZgqEC6Y1lwt0zp240mDQ1mYgh5ZqQXJ3C
	 jh1bGdx3qEHN0f7ar5/ZYfsxVdfILn+PwgNYtXjqQ3a7vlA4fEJU0Snqvvg/QzrPXJ
	 3Tl8UeQUGsMWLYhp99Cf8cJrfJQa9N0sOgse8tkHNRpMLzpV8zjV2C/IR3mdGmUNk4
	 T4Okmo0oczrzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B41AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100368749.31087.7712907454572709957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c35fc7fcd006fd876f5c078760d7a885d52eff756462cd66656ba2e55ede529
Date: Wed, 14 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671003687
