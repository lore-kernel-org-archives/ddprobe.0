Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0087F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733B0C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662945053;
	bh=VXr53o8KLaxey9KDcat9Xyr2Gv1krhMysLL9WagU2EY=;
	h=To:Subject:From:Date:From;
	b=WqFeni/jJTAXEmZROnq386VlbcM0UWWw35yxvbnNNPvVRq9Z9CPuh3S6VM99nfL5a
	 fbKekcKxEWlRVB3c5gWAvFndIj7vmmfhEi9o2nEm9w6Yx4JyuZoHul509GQc8lm6c0
	 zIBxhT1Omp2N7GO0dI3ARJ50AyVU4Gw1WsuQsdOLnt4njYr0qXdc9ans9XPD3lkI+0
	 54/yI7wmtYl6aqj/bkj8rEJpj6QmnL0CETOacp6+gCrZZNg7WbyKHS4ZLv0ZjRFJnP
	 IzBJHKTDEjhl7HO7AuvHK99lh0yHI1NrN9oi4o4LAjPGwzKa8ytfEZc5gasVNBSvvy
	 MPdzKoDmzVbUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51808ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166294505332.10710.5793193796433633431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2233e2e9fd6485af42ed5ffcf86bd75e4f0cdf9f5a504ee426b205ccfc597b4
Date: Mon, 12 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662945053
