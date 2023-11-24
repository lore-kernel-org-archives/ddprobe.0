Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C246631740
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r52OL5+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EDFAC433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700848696;
	bh=danz9oDTqm4G49qYkDB7YZsNhHJwOw8HhllA2al9X0w=;
	h=To:Subject:From:Date:From;
	b=r52OL5+8bB1GhVlE3XsZd7wQoFrvw1GEwLiiEYwwgjnjpvoDM9Chn6xYUJwQt4ZM6
	 N/pADbs6/5W8mQsjWuQFJKgxuStROY3nwhHv8mtPSlYwC1aVNnTaFGUgZ1gw075YCK
	 oyFHadXjaqd/UVq4PWKepqELHXtng+Tkd2qN7VQpBbdbQ1umbFxP+flExPO8v+BXej
	 fG+l8nRWVsOyepDnk9a7jEP+uRXTwTzJHodZXI+70wwiZXu7C0E65Yy+inU+KWmuKe
	 mmUIeKUW5tyPXodJpkFKGo3FJHwc6/Q5TErIU4EfJE8Z/op67YrY26BFtyF3WZFQDs
	 wtQfDK4k0MU4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B3AC61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170084869638.14857.18010246800809476433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e33bce32a83c0cf5378c52b7cdcbdb0e8f6198dccb36f391a8270fb1d70d8f
Date: Fri, 24 Nov 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700848696
