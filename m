Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E96228E7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1517C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674226925;
	bh=sw/dEOBcQUs0oiE9KleS00xQicF5c0RQICs97+9fSME=;
	h=To:Subject:From:Date:From;
	b=hRukMm3ru/ui3u2LzLoMt3wXKiJEGxJa/bjCwB4/3a/ovxd9oakVbCJ1HzqOGnG5b
	 UjDhDUKy/pwT802le0xH2XgDpwD3yxF04gBBjCyU5AA/exlNVh4199rDT9+0NjLE/X
	 oJfKKTYnRtQYP4IIz9mpS7ztkb9c78qOguwAuy0AoWVk5gP98APjj5EJ9pPh7A37KA
	 ZNUT1+Q7vMWhgtJCl0xTYoAPZcY4IGpOiAitQSBfvHDBOes5PBNGf3yKw7DCTq8Rdm
	 2ZUi58w51yaMqwa4DkAVhbCLsD9vkqQYAIB9GXpvgcM4F+bOqsvj2CYW9bNFsdIjEC
	 gF74V2+99TpJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FFBC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167422692579.24812.13890335805690529175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3b397faba473a45ddfa69fd8b691fb1dad4fb1669ebc08964fbba00b0da99e
Date: Fri, 20 Jan 2023 15:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674226925
