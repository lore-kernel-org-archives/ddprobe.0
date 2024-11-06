Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C51204086
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730922954; cv=none; b=dXvkyVdlyUUQZj8MiuDIJPwMfZkg3a+vbIW3qrTxCIuC+XeGkf1t2xWEuBW1wB9abdau8Ze5B9ueXb8u5y9dxVd0y8DWAsQI9KLe0LQ2HpoWk/q7OKEiMCpPOkNYkciS5qzBi4waHS1HezSYJBtohJHOdBuMgEAKFYJONfjQz5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730922954; c=relaxed/simple;
	bh=WukI57x2n+4hWr+yc5lqoVkU6gr1dDUxgHzyS5wklTs=;
	h=To:Subject:From:Message-Id:Date; b=j9nlRHIfcHLM4nGQaKmGFsyZejnTT9b0W0Ahnn4BpQf2qkMPUyE4B0l9ozoI1BPxj+GNSBhx7KMUDdpGXyNVTFuDsaOvMwfyIY9/yoBTB86gLOK9vtotMgYh/0wZVBr+LdZXd7ci1C3pQzndNg1oaj1FCGUVzH8LhaA6YyWL+Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+p47qQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+p47qQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF438C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730922953;
	bh=WukI57x2n+4hWr+yc5lqoVkU6gr1dDUxgHzyS5wklTs=;
	h=To:Subject:From:Date:From;
	b=G+p47qQRyh+Wm5pk6YAVo7B2Y9BHLeLidE7LlI890vzX4ThAo9wlnHxrnNfc5A7Up
	 i03h6v8Rg+p39UfJQ8oyV/ALiCA0f604lhl59NiwM8wSOOhOc7namld9E8VKXeoIRL
	 rihDE0KQGsxf+5rANJluMWVmqlL0I/QGsRXEhDgSptcGF3M/jGzR9pRZR0thw8FCKt
	 KjvArEoaObeBCI68y1+8iadymx853Fmulh7XVIdAUmF1xZlMG873cGG+gPT7v+WpGu
	 vVWxdK5rx4Wcjpts5kdpySrOb9fyQngXRm//EFRXK5Zgf7zlf2Mr2MEe0Bv7Y9DTDO
	 VGCuQYCdE+y3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9CDD59F6C
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173092295362.576.11764658364050854560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894ccae38c0fd63b8ee5d006c16315b7379de7383cff001ee4166c6c153fa4e0
Date: Wed, 06 Nov 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730922953
