Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B92F28EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 12:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CC9C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 12:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674820985;
	bh=5pyMT8UuKk55/2aGhRlPRdPqC4Beruo6TCJ8VskWmcs=;
	h=To:Subject:From:Date:From;
	b=iyOXwZKLWkAo+Xn5HmVgyZfo5BIusxGk7evtoNh8j/ZHdyoPC1bipM0SmL5zXPToV
	 jK0yw+tqCh7kH4oN8C90hm+lYLQGO1AawmmRlbNFXaagdf7QZoOH0ABpUHkcqBWYQJ
	 KCcNbtqAsBibKw44fLSy/KI/cX2uIVwLcHQjerPYQ46uRFedz5Y+VK4CtOkZ0sOwYs
	 QiahZLsUxcRMHM/GDa69pABvUKXIEe7xM6HRhYoLP3vnfGPNoJAJFOQNcSNs0pEk5t
	 JTqFb0xmK5A10IRNd4HAsrUDOyoRLAN1h4dItz6QrOu9x4nW5Wnb7k4ZQvgtqK8dVP
	 ldyZdB9j2W1lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28ADC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 12:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167482098578.7351.5345099890745645965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c059ed8660c851b5bb23d22acb92a53e49543999f1f442b224569f547b41bf5e
Date: Fri, 27 Jan 2023 12:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674820985
