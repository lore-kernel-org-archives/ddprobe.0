Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19F54430
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9UqLdUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A4AC433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699339096;
	bh=rHHlfxrFgv0SGTYMQdZ699SzqKXt04SsPV+2d3qMHPs=;
	h=To:Subject:From:Date:From;
	b=C9UqLdUEYFF1+o6SAeOrGahIhY9KwuTMAgwWcQqBEeGqGszsGX9va9lp+mm3xElcS
	 sC0YcQGTZ8wFb5fQSnP9GIsMVKqWUNiRuaZdXBLGBwmtNR6o2SlP5Xj3LNI65HfyTO
	 GIPc5VqWkm7H8xbrBm2IKP3eRv0X/ZhKXaBVgpuWa8ZVjXuUpig2XOzO5oNOrGQk2N
	 05RjVmkb5iRSWgxbHh9FqVNB5WV9yP058JyyZiWIb9Io/JqOh+V7tEN0U+T07R4xcQ
	 0CAYY/sluSqRjTTWCnkMS2Pw53I5Z+8+532TAkjlidXAE+K3JYbCQOV9zZBfWYo3VW
	 dojESxZr8tbzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB8DC4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169933909638.13395.14588795386791904813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94180616dbdebd801c2bae75606c79c0fafd4fbd932a8a25bc7c62c0018f927
Date: Tue, 07 Nov 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699339096
