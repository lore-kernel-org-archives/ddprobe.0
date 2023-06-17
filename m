Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DFDA28
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 03:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7643C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 03:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686973148;
	bh=zJ3/yWKa2rcMRXKQKMDmedoNTtCLRhYSWzN4Dhs3YTs=;
	h=To:Subject:From:Date:From;
	b=eM/AAwA/KZdI7iiXgdvY8zcok/+UtjvUBsbGd8WA/2bbmi1YoNNqCQC18lXzvcDlm
	 v/z92gQzWjNn8DVC0XMtGETu+Vbd4a7lVtp93UYKpqmRgIu7o7ArdK9T/1ie9DSTi3
	 y7aArvT21urXhq2YKG3obZyA7+8IQO1s4pTFuhIE5D4nRBInqq6alkiYkPdsx1DILr
	 5Kgw62KwDe+3f3Z3Fpca+WZs3Ro4D87jrvIp444SdCY36G+DvlGQyuQv6/YMoOw1P3
	 HlZd4KzF+AmCmUp5FFaZpDTe2JpIN++W0fJy7CpyNVq/f1xoJmFP7bn7t5B0A8RJ1Q
	 1PU2Y/WE/V69w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F67EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 03:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168697314872.31446.6975571713419080765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62bac516df35989160e63ae74b5b71a4a591f315283cd2f7ae7d32b1b1d34a4f
Date: Sat, 17 Jun 2023 03:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686973148
