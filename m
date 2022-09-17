Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0A2365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A14C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663391453;
	bh=ZB/QSpU82Pw5xUNKQiJiqmiUJkokyrYwV/CgfBCD+hk=;
	h=To:Subject:From:Date:From;
	b=HIGsSKHSxwRWPBMzhLbel7r8h5zgIqOKNTFzZ6VdnS4K7Adm6HCk3M4Fcq4eQUT/6
	 Ogj0aco4325S1vi1SDe/22fqfpCGuF1h0jBZmjyAC8IPWdm0Rv3ev6nBrdp66cVQht
	 0xLrUltXvYYPTThQc2dfU5WLL80iUHjYPDEwHPolVLacJ3VhNE5Gn0BTA+LHXIiz9b
	 LHsv5bd6fx0JsF8to/Fn5lcK0MkQY/78kVZwOzUK/fp0Ixm0Gh0adULJ1JcgXNwIKw
	 u0RZUmMwt37QdUbESQh8lw2ZaaBdi5W9lAwIf2quSZzJINpJsLnr7UbHzIkQV9Jmrh
	 HZviLDQMUvJnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59780ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339145334.21108.11543049381232720671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f4e837c1708d0724a23bbea81068697c621c84fd444040ca11f7329f32539d
Date: Sat, 17 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663391453
