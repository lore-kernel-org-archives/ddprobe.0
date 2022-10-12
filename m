Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE62817CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA4DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665559853;
	bh=AZNktXi5MuPYXi8yIiR9tmv+5Dq+fDCK6b/HjJJGVoA=;
	h=To:Subject:From:Date:From;
	b=YE2S/lJNVBy2+5RE43QCY2/l9G6lfXv0W9ysyoZgj5sOYEUhwQd3+z3Tyt06AWJhX
	 mJTuKzqWcbJAMR0SmQxiESFG5X4aPc6GfmrqUpDXCTIjIwSV6biIDQfAcMuAlujm/d
	 enZbql5Hm6xAI8X2rokdTqz1OH2nUEEDeRvfW8sfy61X4sEf/UH7Q8M7RaChn1KnOW
	 4ilPp2FI7+ytyUiW3TNHiHmRH9Ta2RnJeD47njs1KkMTHNMqqxG0Gy5MR/2SnRZ0Ea
	 qVoS9k4FoPihuVxFQXcteogQXX44CbsQ8uZWkG8cJftA9sbpbsaoC5QXGKeFBcGSYY
	 zue5ApeldUTDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 562AAC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555985332.19227.12193520850194261986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49541facd7d2b03194473efcc9dbcc28febdf28de7e38f46e98025676eccd8b
Date: Wed, 12 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665559853
