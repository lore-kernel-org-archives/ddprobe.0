Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5069A158A23
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715026943; cv=none; b=H0+KJ8aRqQWa4dW8OHIbCKS0XkHMTADMgmlZRxFwaR8C0pLHbaE2YnAhKxNtTloM17JpjVMtFAi4gykq1XXpFdBbXqzEHtLTYTQo7PAmPWTv8ZKkkgDzvperpifjDnM2yRqrcxzZZFf2WTn2VsjKdN+de1rPgeF5BCxqE7GBTrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715026943; c=relaxed/simple;
	bh=LgNCGYxzLBm3ymAar/gbcw1fq2daS3nsYQsIfJH130w=;
	h=To:Subject:From:Message-Id:Date; b=G20oKH3CIA69evctCbOhFzSINSl0RD0xgpJU0qvqyn2i/abT15rgbfqYXjNySB5HiE7s40ibfGLu827GKIc6tACsYwOayyxxrfEeVcuZPJBhR2bi5VwLZpsXAzuwSLQ3N46Tx+x0z+NH1mSJQhGVw1Y9GzeQZQAF9Em8n6+r83U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2xeEFwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2xeEFwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3023C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715026942;
	bh=LgNCGYxzLBm3ymAar/gbcw1fq2daS3nsYQsIfJH130w=;
	h=To:Subject:From:Date:From;
	b=m2xeEFwJwfkW2YFYG+UOWiTszWhJHVDM3+hPqapkqu9yf588Wuwd0TkzF/Xtt/qs5
	 eQYvFr2SURtL2vIfRp4J5OrfubvW4yJJr4EjI2IQvTVdSM2wScItd9ODkzTkxJD75E
	 x9vOmrJAuOSrL+GEmEEqdXjr8OxxPSEUyXFR2bWJ6Cu+9wGJS8NBLTqN7MbZ0B8diC
	 J9m+z6mcxc7QczxoZnFYfaraXIimDdA5wuCEWXJtVmL4IS8kNxE8YxGiYXhpprH0Pi
	 4Nui2UUMNiF2OLOJqx+r2K26aadMwKW2hCaQiSwxVXSJHLXkmo1XvdGcEcZ0BFm6+F
	 YMfTivtLTsZIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8112C25B10
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502694279.21573.17193667707076027520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2298e8a8363d07d2370449449978232e41cfc90e4fcd884a7264f4517874ace9
Date: Mon, 06 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715026942
