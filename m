Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA4D23C3
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 15:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF93C43395
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 15:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694100248;
	bh=B5PYcJBfveg6WPbvlW+svO1RH2ZvFGraLGJn+4RuqmI=;
	h=To:Subject:From:Date:From;
	b=pb5W4Fwp4Xw4BF5P3P16Z8DOldRyM0DAM/ETJYsAcUJQqF/XCTcYZM7X39JgnRAse
	 ccHxBzVKBLxBNnqImRjpa+7jl/xPR/Di3cc2N8iWB8z4XThB3nLba2g7IIhFsE3nhj
	 lt0zALOtGRJz109d3ig2rk04Q/tnYRjo/0HyqE14zeKg05VDOhs6iOePtEYARjrBjJ
	 hKjb/PviaUCt2QD9beWK6pDdsIje0sgpxO0ngeCJAwClfDxzAQ8qDEButtntN+Raro
	 wSh9/D2nXxvaW7OtVrC2o3p8iDSLMzKhgCTW7iGj/vU/8+2tVoZYMnDzXF6hXEBJY7
	 aP0RW4sLDhCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C6BEC8739
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 15:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169410024874.29031.12534009869558776409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cf634a69c2f3317005b6dddc9a1dabea5603ae479d9e48fedb8a4af9997df8
Date: Thu, 07 Sep 2023 15:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694100248
