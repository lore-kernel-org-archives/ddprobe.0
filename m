Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F5A63A8
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770B9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669818054;
	bh=NTEBzJ7husTwrYK44sG3aLrHpuXLK4WZd6fpUTDVuhA=;
	h=To:Subject:From:Date:From;
	b=LsC+YqPqTjJTQnwDFeVAUBDFtJoAIke6rGhFziqZQGQIqGRBslaWmoj53TYuPN/Qp
	 jYmpfY3+kLCRF8DILMxKtrRv4swqziCwA6I1sfZfZr0r9oFAjnJyO8ZSE9bO5vwsfK
	 IVylWt99WhHNt3w5pK80jnGKL2DH8VJHwFahq0RjPQjPVpCwQyQ356pn1JXEtAA4F+
	 Q+8lZYsVYsohAmf1rzEoaJCX9xVmivY1e3zKnRHgeEZAs31dBz/kBbO8lEsMKaoXpd
	 djXj5/lEPsAWtid9C1rPXJp8wuv5APSm8IcbTQQR/02HHHMn9l2o+trINg8T5ywVOl
	 UH9SfP6EHcmpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B840C4332F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166981805435.27829.14096877233080551913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861cd45c1db3c9017c0216f6010ce05ba5381294e916522d6dff69044c3328e4
Date: Wed, 30 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669818054
