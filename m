Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097721C02
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmNpYZRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85431C433C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698604696;
	bh=9+7KO3YNRwyD1ktVufB9qoKWB83NlhVx5j1YIlpIvio=;
	h=To:Subject:From:Date:From;
	b=FmNpYZRZHBdpzqopdH6ZsYEsmtCasGNRWcuMGyLZ6UA/vzPRg+zhNN2vP9NMsf4rT
	 qkKzcNMygSRgNwYDKdG3s6xl/7OFVsHcoWiYZyE5q4VZQuskFS+RkOsBIMbiMEBAc8
	 OKvIClxcGgxfJAfMwR5CYLbe4fn98Yz3Q3EXJhGheFhIYSJLAGK1hD3bhL7g7zYGJ+
	 XUmGUwW15CLzPQ37NkEjATrC/DZzYKihRLh5dwiUAHJEeaBKJZGPU5sRVwcmY39drC
	 0T4RzOA8y9qG1aY+JhWlTiMiewy1O4PvS9pGkCQ9KopYSY9Tl/ipwNWVthdjCPWy6n
	 1AKhXFkePZU4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6736CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169860469640.15410.2809425514954644762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d850ff4b2dd9e9c36623ef06d7ed9e9131d0c81be0dd3f4ceded3ead3450243c
Date: Sun, 29 Oct 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698604696
