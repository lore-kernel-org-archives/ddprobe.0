Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA40B15B2
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA25C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663131653;
	bh=J47ef7rIugE8PpktJSBf+KZ0c74Cj4wnvVgMXSboejA=;
	h=To:Subject:From:Date:From;
	b=jbu/Oq4OYFt7FyxPzbJvgJjAZ/UTEK99t9v/KqKZ8WuHGSujMCbW5a8I0yZKKM8ZE
	 sIlu6Zwbn4l+6R5Y3yKXN1Tf4n2VPpzLBmrBvlAXpj9U01xCvDLAr/ICO4DVtw2g6n
	 1tIW8PeZFV4uS9AhYLEBAP8CHAI3hmVRVDYzzbNMK4BQSQu+IQ3UesFc0XifQ65cGT
	 cbDT3qH/zBrwh6XOYyrwSPnXCsCVFcCNHlTdrg9UDEelwCYP4LV33t5S2y1lruWmCt
	 6VQlnxNLKWHnbEVcuJ0Dn3QUZQlPqihzG4SU8Oll17LBteQyEQDg8uVkZ+eZS316yQ
	 TMX2f9Oft6Jzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E677ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166313165331.1476.12478520079666144674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f1d05fa1147aca2812adbcd82b504a83cac7be711b8aa0e42aa69fd1a0d922
Date: Wed, 14 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663131653
