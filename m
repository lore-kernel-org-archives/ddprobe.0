Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DD21822E2
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720079123; cv=none; b=e8XtMJg5L/N140mvrIly9oQ+dWtIqNhpqANHj7nFyLBww9fxX6WK0OywBCdp/4tKu7GoMAGSmfg6KkQDHeoI7f0k9pl6w9Odw8yYDAB30myMFxCVXs5cSWTsOZRGyOIM04HpSZaDoixeLmmjssc5hBeXRP3PrXNn3hI2fkyix+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720079123; c=relaxed/simple;
	bh=CwxoK5/9yj0LpQ+5v0lfzDaJyX+NTvF8oavt/WjCU8I=;
	h=To:Subject:From:Message-Id:Date; b=jvpBPu80zl37iVTsG3X+hGqjykI5AhJYzVbItyUwGtssQKlE0ViYPGmz+raaNjfRxE2S8AGVol6mSg+yplfLxGXUHG/YR6GQSqSeMm2pvhZ0OAz17pDRmxMnn5OvUxL5gNuIgTpr1GV/pN0mVPSlJpjj7z6CkmJRF5p6P3fIYHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyWTo2H+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyWTo2H+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64BCC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720079122;
	bh=CwxoK5/9yj0LpQ+5v0lfzDaJyX+NTvF8oavt/WjCU8I=;
	h=To:Subject:From:Date:From;
	b=PyWTo2H+UBSOM/T6TbznfLMffYNJhaDaZ5r3J1UsuyGKgl9BzVT1tzU4wTX6vmOSt
	 gyW3WUAHT8HGbFjduYYGo5aD4lEebFu95H6czgVNEUJTGn0RNf4b4Phh1R+JV4Mym/
	 tVQmgyweONCn/lQNx9Gbk29ppmpb6BSJN9RikmvOme5StqGRGga//ALjAx81u2/wrc
	 RYidGi2mEEk7TegL9/FuIsMZUPkmM//n6C5qMQnsZOXXMtAWbf+AqFGBcYQ6Q4GAhY
	 uoSNzGqHylPyb6sXuwmOmR1JQliBwj6zFIm7xc35CSvqnRYua/Mvv3K7ieuluObgbM
	 A5ViKJh7YRZ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1042C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007912277.14917.16773948803019343641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e978cfd8400f6205cd318ea94aa5f01fcea90fde696340134f30780bba0eadf3
Date: Thu, 04 Jul 2024 07:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720079122
