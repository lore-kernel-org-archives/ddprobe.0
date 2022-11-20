Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91247EF
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED70C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668938454;
	bh=bqXaT/OzRAdXL5Yj/il9FKU9o6o/U+zGxv5ihJLrNso=;
	h=To:Subject:From:Date:From;
	b=HZVrAEa5XHUT7aknKl+kgIfgrB1jJfnyUJpyxbeBgmMTxhvalKULWBfS/n+rM4bM+
	 wywVEyJ11b9eE1t8rdvqLMt/K+BP79Yoiw1oJ7wjA4H9qhT+FfLF70ORy3Sal7LbLs
	 0WU+IZJVNZu9pz1nkIIh76Xl4jd9RHZP+waVCBhJPBrjRyPChoC7hctF9KNVz44Bnc
	 7FVWgw6uMrhBNk4w5nzYLn69TlOWG5O62dlkqdbqqa2s0/9KfKqLPqhy/0KdiUKzd1
	 MG6oUjWW6KrO10RmlvKS+umpp3ruCsE/BMpG2CD+9EahNkjP/Zn1+9lUDTs9KBGbwd
	 7pu3yT1STmrfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BAAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893845431.7657.12153585026403569723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21e65c7f226209db4186e693869d2076ef3cdac17fc1e1247812670dd2356e6
Date: Sun, 20 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668938454
