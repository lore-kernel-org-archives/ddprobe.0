Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7823DB97A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785450034; cv=none; b=W8FP6iFfRZSynhj0GHLhwtk/EUVVHuvsQ+qJbyq+G3AmMkRT6OKfswEQBCnT5YH/Rz8aTa6EvuR4N+iOQUFX8U5M/ujNzOU/IQzPC9THl9JO+CFZLvB8prbSxtl9u2HD7UmPvrxBLZi8knuLQBA5YcIfs7EAKegLrLAEWxJUMo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785450034; c=relaxed/simple;
	bh=PmwOZKcModZ4f3wfpwhjWfQZHas/n3A+C1nEaJbUk4k=;
	h=To:Subject:From:Message-Id:Date; b=gHHpLrMvlRCz3+rGN7jPMQIlEO0AbN96XsEjGZnPCDBrKRzCUtidTUZl3ZGSIrXkQdbCeYQ84R0bYdNZ94LDCHIAaLElDdDyrN7UeURyy/8MtaGXH95r1IuaKtGgKgw6MAYTh9wWw+jjCj8tNFBSKreqBmVn3/ddOHiLJl/BRR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS9siFJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS9siFJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C57C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785450033;
	bh=PmwOZKcModZ4f3wfpwhjWfQZHas/n3A+C1nEaJbUk4k=;
	h=To:Subject:From:Date:From;
	b=uS9siFJXJ5y23FNDZYF1bxpj20pGHuZuASD5BOypk5JRggkxX0YYNiYspI1MN+hsA
	 DpNA+02ooDc+HXGvF0/MW1v9759Qc0fcSh11W+5RSzsHNEVEFu3BsbC+10kfGvj9uG
	 xl9ieRmB17MJEan9LVH/yDfrb2gkq6CIfBc+d6F7PWOTuSbNjViCtk+Qdi1lEZrpRD
	 EBDd7CCgT/BlwP3aVhOYepuwjxxgivZDI0AmFViTLBeQoGW9xGsAE1OCJXk+5i0ruD
	 EfoP3rD5unppsCcXjgSOJKcrGkGCtOuTL4YmFhNYHbtwAcxSe2VvkDyuHaHAMEDm1i
	 SSYodf+puv1Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE7FC55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545003370.1237.1480158734396448163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a697ef0d5ddf00ed61be180349764a9c3a42f8ba78a0200596b51366d7f22215
Date: Thu, 30 Jul 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785450033
