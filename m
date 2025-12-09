Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0336B22A7E4
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765305174; cv=none; b=cBynaYnhHyZ9B0OnGiVCh/6ZbynmFwTO54Kom/MRAd2dw0RKPvVJIP+v4709Ya1yjDcO4ABSP8FGhoU/sCsOkToNDe6iEtJ1AMzhcGJF/dyamAYGMDqqEb+vVjGC1kNId3+40Mb2HEEEgsyRjNh634bOx4P6RuTjyvUC7Zx27mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765305174; c=relaxed/simple;
	bh=yyrF/Y7+0FYVeFIioA2hD3+BuTJrhBSiL7dHjXjv+Gs=;
	h=To:Subject:From:Message-Id:Date; b=YCjjNMuhSCxRM6hZXnbGuKRHqBdoQinHv+kxzBx0Pq9vovMYXlHROa70RLs176Hvg2ZDL2/EBlkGV48GL5NECQnvH8jJly9hLKsecptiqWff7rW0/XqFcPV1nHCzAa28ieCBjlTsObug8Gt6nFQ+UvFdXrBo3CXYZPQOQezc03E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzOUvZU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzOUvZU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C66C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765305173;
	bh=yyrF/Y7+0FYVeFIioA2hD3+BuTJrhBSiL7dHjXjv+Gs=;
	h=To:Subject:From:Date:From;
	b=LzOUvZU0W9KrRTlDrJraSB3JnfNpL2tiG/+5+D5BuwwIAKF6/TuMRpxVrOa27cdiY
	 W3tO75q558RhB7lKGfr/3CLT50epOGbI2/MWLmoBFG/M7aAGMC5WN7fIDeKrio/lRi
	 l9ACSjHzBQPNLqh9d73Tjj0km7isQMtxhnoibkjpCY5+++/nPGe/sGqOygN+qtWIDQ
	 wGg85hi1fc5ihvGRWzZp5CpAfOOX9AxtSgbUjYZcQCHKnRmq19AcKu6vD6E/Yj7OVS
	 0qxW1yq5v+SzHLPjvUV8N/HDQRmcLtBTUNlucB77h52vyBan/zJD6UPVQ0cJXogOQU
	 EOiYVBwgo6avw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C2AD3B98A
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530517359.12300.14963991427624489677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd62270c73c965b6ea2faba3dc4810923b138a4674a149f0978a26da9b54188
Date: Tue, 09 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765305173
