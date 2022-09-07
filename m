Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B402F4E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B35C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662542453;
	bh=HmMPIpn4o3hQbZq/E5R5KQOEh7bGf0G7NLAnMxOJorg=;
	h=To:Subject:From:Date:From;
	b=TeIXNNncRFsHhrQ6KUZCM4AwpO0ukJx5GlTtcYUzBkTCbgGcYE1WVM46JfJ8X2wH3
	 qp5mQ0j6OQtoEJQaNLzQ3jOw+Nz+IN6NUtUKwXUVDInQH6TSzRwZxZDD7Ua8T8e9zp
	 54EkRd8QsZyjSVniYgEqjS5Mvwv684SJL/3tXKYU3VIdrbu4k8D5FEkBaYlhN60EO/
	 C2QKQjyzcuGlCGvEmuJ/XsvW0VVi09+j5C72MAYdQcK8Fmixo2enw/3q21uDyU7rk5
	 D5yUIUhqmCT0EPI+rO1RAcJbg+on8kL+CbOHoyxndIY9Z0bBu7ihjPaAh8qXXMcxzz
	 S0aWMXzLaQHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A80ECAAD3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166254245333.28811.4344764013693269749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce496c64156c4d5db2d894e06bd34bd7e37ccef48eb0899089d32e0e1ad756e
Date: Wed, 07 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662542453
