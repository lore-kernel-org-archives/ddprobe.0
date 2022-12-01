Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9A17C
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782FCC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669863654;
	bh=2AAQvjhSvv3w62fCCfp1SGTidf2oUYuIkZaxIV/OQvk=;
	h=To:Subject:From:Date:From;
	b=tSsy+qLglu8Lho0Y0kdhpeemCfmSfEEnwLgedjnljjf7KN611zSJlHkpgbqLQwIli
	 SeAFINYVuNIJYJKwHsfYKATUgrsr5UK5D1fmBSEyhUrH/bD8xiF9ZWQ/5O1B+eBn5G
	 2kQjy6zbjNKOvuqcGOrwCu0B1a/KiKEyJaDeEWqQiL4xTw0L3WVJmPQ+au0O8hS3qP
	 lAKjmtUVNp4o8OZo6yWQBChxkmTdYmjaFkHNdcsSuFv3tsdhd+x5zwD/h2KZZjfQPi
	 OeRaJt3IOJ3h5rkjvzTPl/V+OdBIdtJIvBG8ALCYe7LWERvI1WEIvFOBgaNMhZt46X
	 pW3Ro559v8Vrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54752C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166986365433.2587.15049095177898090382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68eea39f7d13b746d24c5db116a411e6b41a02d253d2826ae7d9863c94249c4
Date: Thu, 01 Dec 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669863654
