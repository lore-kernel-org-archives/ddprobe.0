Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638871870
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 23:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85B4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 23:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692486848;
	bh=OZE+s5lurZH/in7pmz8EOIGLNhbtxe0dQrR0wBJ1J8M=;
	h=To:Subject:From:Date:From;
	b=gmg5Efm4UNzlaKvC+rX4ReHyFDMq0IiinBxYM0NZhzVwnVkNswWNzDb/Qu4FHY/G/
	 kFjAuAe8KUuNRy2UnbO6/XaGw8JWrilDuMQS8jkN9me8ynNTpCwIwv8/GRRfov9LQM
	 8C5JugWCF4dGNg6aoS2tJVP9USINy7zN6m+n3E0oqKjU0Jmr1uJv7kTGea3vWLxUTr
	 U8cJg4Ai8w+Fv6PERhKWGOok/aJ/BuVN3zkENfMQUp7MkPrw3RKq/lucBrdm1CR/5c
	 UkfBKxaEV/K3tZlRpRnVzi+8/bediDO6w36gR94NSP338yR2GTdyjyLR56x0U4YVNB
	 q98gTinAOJ+3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC7CEE49A5
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 23:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169248684869.31179.4754480433739251492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76095396c0076570c9257b270af16beb11d1e7cea0c8e89fdd106503b24c697
Date: Sat, 19 Aug 2023 23:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692486848
