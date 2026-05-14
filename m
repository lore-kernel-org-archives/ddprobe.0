Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2763C311C2A
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778775034; cv=none; b=oHVAlLaXH/AoqtcfVmZoqCjWb46nIyiVkjF7jMRnOQG7DLzUFuQPaDvrvU4wphCibslAgfQpC7HBvWEYKw2ya/xG0KJp86kHhGmW2fTjCHTNEYQ19qP4TgToyGFV2mWBQkgTPvuuf81hw8ma0c+jl7DyLuM5sc5PK++jDhV4Bmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778775034; c=relaxed/simple;
	bh=t0XIdNwp0TC2N79UPN7xKm5kE0dJZWgHWu8XH9Zfsdw=;
	h=To:Subject:From:Message-Id:Date; b=GcUBvE3HQUq8YV7ysa3d8WKBIbY5BYmejSj29wQ9WJdnwrx5D31Y6jk9NQoML0g1duGWVFKqY2+NoYVQyT+GAnLClDOiFUqwLdEFZriGTPQZdZWSU61kV5xo29sOUToOFIA2gbMV/TI9+LIjIOy+keb5iM3g8SFM79zMjKDtS+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFloKt4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFloKt4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79F0C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775033;
	bh=t0XIdNwp0TC2N79UPN7xKm5kE0dJZWgHWu8XH9Zfsdw=;
	h=To:Subject:From:Date:From;
	b=nFloKt4PCK4sBt7RfxLUuaPc+b9ryA7iB/3hRDj2nayGSKeJaosuZTI2cuUA9Re2P
	 WmdDxJgMHjw1LHVQqV8wo6IlDn/qMa+vex6YhDFHO5xD93cl25vlJLMnggXAiHYL1+
	 QkZJnuvPBGjOgsOEHdD5VHycsnYV2Z2oZpHMfQ+fqf4IIlJqEhPSUha/DgUBUeiznj
	 8OcCcaZHu/L0lNf26E5uHAo5l0lFc45Ut8ydWMx+ssa2FAcM/t0svk+KW3tyoDysXt
	 umg7GbD78z2zOTkLEuBvwXOASxeIxVb/WSKWsESnk1ie5HDMcLcVhs1kd8YZR4wXrc
	 2o/rAJhWM1cNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96EECD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877503368.30175.13170090053164046277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039ecbc0f2a32bb5d946d045b20d508ada486d408ab2232265117a1854a69664
Date: Thu, 14 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778775033
