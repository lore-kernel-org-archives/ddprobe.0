Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C37737987
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 16:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE68BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 16:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689957128;
	bh=KLcKNwSICn4ECu0mFBeDPpLyuJdQtLA+DDTBzPaMfFQ=;
	h=To:Subject:From:Date:From;
	b=TRXHaNJvVBBy9Rw7cVdBfSYvaDRW42Ont4T7WwN5HVPuJMJKpDlzjYzWXltcjIPI4
	 5MlnDkI2RBoimQyTXRwfggMZ9346DIeVWq6+CguRIExDHuOkF4mbfJsbpnM7FivG9u
	 TDkO3xTO11N5k3hGKHeQg0XzF2dbeWloz//x+9ib9ZBCMAS4xVkw5t7XJrbY6rijxN
	 8u/3niLN+dkw9h4JgLLPjRjlxhibg61C1keif5Pk9f2Q7HnNL5WYRah51uT/YTZUhh
	 B3EhB0IMOjF4tSiZ7x7r1eMytLmNhRgo+8wEDS6DQtlv+n6SZcBTADWgCu6ENB9fCz
	 +id9dCnMeI2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5889EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 16:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168995712873.26615.18272525136986292065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0611b234e788be33715df5b9f974888f0983257b2d4bb9cd1b945d7bba54ea
Date: Fri, 21 Jul 2023 16:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689957128
