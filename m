Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596F67F9
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 06:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6270C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 06:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693896848;
	bh=0Jbm+bGGlZrCtBbk9tg5FBuBw+lOAljjyg1PI8fHbuo=;
	h=To:Subject:From:Date:From;
	b=mhwscx6UzEaSew7MUJlaXglUAZo30kSVXvsdaU4/XgXh3T3lw0RkZDqNFB9oU/vuF
	 4lDl7sdOxNDF3q1o/WJXhzq+CbSgJOczNMVqUwaTpn2ReXxbuy8dlF3VcvDdc3ALfE
	 b4n9pY2rqoSJ992/plry1oXF+7zk1E6OuWZSwtk4MnB9+AS65AYStzGLx4VwQ7lSS+
	 i5Ek4hO0yBaz1OHRSTziXgwkHf4eWNn7L4mMip9z8epduCPC8JNERKgv+ywI25VWk1
	 0Rg+Yud5r4gfhmtaG+eS9Oj/1xgBq9IVzjObJn7iN90B9GuObc57rJipg62sSByPFO
	 vGY+ONdF/xVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C51C83F2C
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 06:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169389684868.24575.2628307231550657666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f296aff44903f98704fd8c01e8c8f147a0712892eef95e45d5c9dc6ecb73f1f7
Date: Tue, 05 Sep 2023 06:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693896848
