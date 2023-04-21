Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5937E2F43
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 12:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03B06C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 12:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682079546;
	bh=FKJG7NilBsRpeWciXG2UOTH04kNQ8pMwlmZwpr8fnos=;
	h=To:Subject:From:Date:From;
	b=ah7FaUcENhlXXs5TkTgvHREpQHG4jPPtJbD7+dQVqFJ6xJrWAguVbI53XdlVo1JOB
	 Tan6/LZsrdflnBM6IyvujLIOQ0hIV8UNMLdnKhNje9XkOU1mtrnWcUI9/gTmCRBBd4
	 xrjWatzMtuERtPJJOYNTilWGfN46RRSImS/ksjm85It4U2f1k8TMm4bNv06cp6fGrj
	 4oKuWA+PmyFyvdIktZzn+gAMQX9RYEsBoIwrfvsZcUgXHH8CtjctP6OmLjuQrSLx4N
	 q0iMMGSUbyYnpPvh+iA7V+Bk9pkW0BVEVD118gcaj79hDuXe582+faG/TyVvND/EST
	 Mx2HGWfxclgpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4CDAC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 12:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168207954586.6431.11449761354212046210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9040c590ded91c82bede3c009198af05ed8cee75c31c336282af712dff29f4
Date: Fri, 21 Apr 2023 12:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682079545
