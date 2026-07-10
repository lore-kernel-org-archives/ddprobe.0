Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A43F282F06
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783687114; cv=none; b=C8y9mo7m0U6Qfibob7hayOQqpJjUHxvkaUi0jWWHabqjSZe5fPRJDzIkgg6rso/J6/NXwIjic3C5wlkDKRwmIrW80XzIDAYE9W/aE3ZrNYXLed4jc+vXDP/N6PNNorSFgbcyiChjGAHKYI9YM+/bNoHK1xYOqzPqzUOaRA2e6y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783687114; c=relaxed/simple;
	bh=HrkMXzc1sv9MDgeKRKRc8yQSRsa90Lf9Izw2FhlCA/U=;
	h=To:Subject:From:Message-Id:Date; b=e60qgucn6+fBAgqO+DvGTmVvI7rKxIT49Xdy5C9uitud6nw8zkRaSeiZ8jdlQgLKC237Se5YDa6U1HUqCuSyUB9MFvyh/CYM8/qUmEps++/GAuPu2JH3HHfOcRgOMz+xgMFFlqt0wBHGi6c8n/akOD10pbyIm9TQaFebkZ0LR2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yo1dK2RV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yo1dK2RV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5A3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783687113;
	bh=HrkMXzc1sv9MDgeKRKRc8yQSRsa90Lf9Izw2FhlCA/U=;
	h=To:Subject:From:Date:From;
	b=Yo1dK2RVCkj2A9ryHkNdV29G1Puas1vHzgPfbJA4cDdhpsI8Ure2NcyG2tZvz4on/
	 3ANSCO1Efla+IhCsQ/t7xDmu3EOhNyzZVA9cq5x8LC3VKSZ3o5zGRFOHp9qUm3hl4+
	 ROyo7auMD/WNZY0unBZdqNFM6EFiT9PVkNZFLvdepGZN4uEItXAMHvV8Nn0TV61Q/d
	 eAeqoqhUJBnBKCJqg57o0d2u6EVBBAAhBvwLk1d4HJISRMNFVJxDc1zyPchC8dJZR8
	 JjeFIxDw3ypRGpnXeRw38USlx2M+TsNAzGnuXPNowrWzbhBDcFQgj2Jby+P9krbbuG
	 1PCOUZqngGN3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D80C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368711368.8131.17135063733302958811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff38ff7993818c68087416a30f1d951b6603bd1aeec38c73331bd28a6f2af973
Date: Fri, 10 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783687113
