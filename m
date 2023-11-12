Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E1F79CD
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuMmaRvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98EC6C433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699783096;
	bh=o9YF6geEZQZPuNDkmrBHxSc8geGRngL52iyRksAHd2I=;
	h=To:Subject:From:Date:From;
	b=tuMmaRvFk4lixL7rhwpP9H68obl0lpgJsoJpuWvrIb9OYHKSbixeRZTrNzmVthE0E
	 Xk5Iry0YD44lMNBGKaY6e+t3oxnEAQ3wthVF7mfozFS+uXFiBbMB2jzJuH+hRIZmk9
	 TkK79ktHXX+cUUrHiApNc1kN7cw+MoUzqvIFZ1MRHe6qUREUoM4gI2pwDvhKVHlaeU
	 StTs2ve9MNuAV+8rKsJ7mGznMc2r/fo6btUjJRNB9VN2lO0qJ89KZRtZ0CtsxpBN9O
	 XtX9+ByrPzcwf4SAsktAFnZ/s4kZIwh7zSJXssO1VwTXXTwwWXlAl9z+wOHZD52k3S
	 TFdjcW5Q5u2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79740C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169978309648.30990.411969581210109165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396d380ffc7302d57b295d0fda09f8b181e17f0dd9d40335ef5ff2bfab744660
Date: Sun, 12 Nov 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699783096
