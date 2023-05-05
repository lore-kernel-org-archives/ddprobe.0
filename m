Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B25156CD
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 12:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BD9C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 12:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683288425;
	bh=NLXW6KypWzmkdfCu+C3+hy0gK/Hs6rFGP1hsrseipOU=;
	h=To:Subject:From:Date:From;
	b=M8C64t31FX+CjV4DnnA+QUk66K639h3ZhJ9KQOzxh8hFyNfM1YyJJB60ohMm3eju3
	 VdzJ4SMmx0/gm+bCVeWgU2F4QosDxY3JtGft9BFyVxQhN7PB28EflQZKPqdgvu2CFF
	 09CnelgYP/ACKJcV8A60lSiUw+OcMN6TBTb9EJa9jic1Dez/e2esA4W1nO0i4jjIMM
	 oU42GMjHy4y5aPoX9O2v3Q7fq1/TMpN5F5BxiSSz5P94ZR2tFdFoQjP/2UnkCK+rUA
	 rTQ3luVn21E4JMdoxdCh95md4m7Gn8o2grw8eUqi05zMdyzxE7hOA1m8wn8jryGDm2
	 3x51fpZ9o0Hfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B960CC77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 12:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168328842575.5455.14966231634181680488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5c68985d43dde285e7b0c0627dab75184c55349967934192a19570cc967385
Date: Fri, 05 May 2023 12:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683288425
