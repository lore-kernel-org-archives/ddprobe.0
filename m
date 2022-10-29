Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD15D17C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D726C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667019654;
	bh=u6KMorkAfGLdJx9EskIDKh8wLBHGB2/hoLoG8UXLmK0=;
	h=To:Subject:From:Date:From;
	b=l7A4EmQxUSuxbEf8z1lv8eUiXGxrU2vg2IJ/PCQ/j0uNlrWwskfkfvcyU/mE3OdMJ
	 Vr1sAClII9GYM5hTTjkN3fWmTKzM5kUHuKo9ebKG3z24tdWQpBxGtdBYgwTw2i+0zi
	 i6Z9vhZJmojQKWRQg0L9xUntQtNNHdt9bE6zB2LRs1b1PfoZuV09Mrs6UbgQopXf+F
	 16jnAxMn6NppzV+5BbXUmrDRZ3VufwZPO+0UWpN/CyEZb+zWezh53LepE6+N+Yo3CQ
	 qxNT9yIv4h8cRC5ETWOE+bnSx5Cq6Xb+vV9hCE0tA4EibFON5y6WATzYOo+7z1Q1VG
	 pvZJ0q5nkWNhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E03C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166701965433.9570.5405947268140448537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322581deeb8df6629d8d8cffea788f9ea20a3dc62150ef48d22e03a38d1c70be
Date: Sat, 29 Oct 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667019654
