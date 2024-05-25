Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516A084D30
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716652463; cv=none; b=kAXrEwpY9Ue1fCpLAebZkOLiqcFu+k6Y3fw8AjAj5naHKArcNFHxCiNx03fEiH9WxZJgXcCQy9kyVNBiVVPtXpLq9ZQ3pS0Ii3VrLVGLXabs36WCzHgNN+rcZbA2SvOkcZaBA/aHbx8nKHbbObXgfcRwd7M05H6W7NBVEA9E+A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716652463; c=relaxed/simple;
	bh=xCWGkN12Yfko+DAjbjwvi4kJkRnmLy23AV+NphKZZkY=;
	h=To:Subject:From:Message-Id:Date; b=nJwdMma4lPgmBPk1wpMcOMKG7ClT63dkINsotcDffXsD+Oxrqhi6MG1k2HVkTRA4QsEu055QYKAPavqHDVxpPcD3XNRJFLMPXogxcVm+bWbMwwAoPghke4c8hO8j9T5bEJakk7X7lPXMHzP0PlqKM67hl/zm61dLboEz0ju/EfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0RbXPZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0RbXPZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA63BC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716652462;
	bh=xCWGkN12Yfko+DAjbjwvi4kJkRnmLy23AV+NphKZZkY=;
	h=To:Subject:From:Date:From;
	b=J0RbXPZbY/BoMBAcLpG4KPjFryYmrn5EKz8meKZMTxa5Fw6Epzr5YkfAFtJyxTuxN
	 VPXTkSzGKQXIg+J7bBaIJLyf4t+ZC+G9xODuXeo1E+8egxgIE34rTpgdvHiZSR/oxe
	 Tz0d6TNrFsgFUQp/zeBElfiY/OIfomd7NXrbLLIs/uh9RUk/SFqGUecCG5ceWP3beA
	 BVlNCrZp+nOUo2TOst24iL9bXiPx3sOLjJ8nH6U9S8ximC1JZzNvvTt6e9YV8JWobk
	 na3K+pIGMFFNNdDTNGnsZWXNYmXVjTC8I51B6wqJPX9i5TCZZcYQc4OBHD3W/pzTah
	 ZKgscH+L6ZSog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2564C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665246278.5969.4121568564184053078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071ccad56de7ab045f88a5647d5ab9772af2020fa38443bc6faba37bc1923827
Date: Sat, 25 May 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716652462
