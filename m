Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1267DDD9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 18:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7574C433C9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687976588;
	bh=m2/jftL0XsHDwv4EE7w/3mXEShWJND5yhtBigs9O3K0=;
	h=To:Subject:From:Date:From;
	b=jnaL9OeQv3URCcdoF9GnN5uGwPznb+lQRy8J7bHGpaPXfe1ZjyYiN62ThZu8r6x1r
	 8GYUoWnO6DjE/KfUvqNaMz8s07k6HHEcB4VYi6bqAP6UHpdKKr6h8luMYcZA7Ix6Jn
	 7e1ZXBdrdm0RJZyuc/K28PRIWdie/mw/oLUgZz0BchIx5yc8EMOBXsKiXdcFty2g/a
	 Ld+13dtruLMFv2H2jJGZvlTJkwzkiOEVcppRNmUMwlbEffvB1E5sofgmkm4yJGD2eP
	 +TuClKZVJe+R1g6Rn1Ytg5vf0wlnDQJJD4rBqwKsjMwhBg6ZG80E/4U6FQ+hHHxhHu
	 BT1v9WyM5hfow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE711EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168797658870.27762.17905239877793718379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85da0ffa9a7881866a13d76ad0c660441fe213a62ed7eca650a3f34ae1d34b3e
Date: Wed, 28 Jun 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687976588
