Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9481C07
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 03:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E559C433C9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 03:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688009589;
	bh=NgM6L9C32hU+a1CMD2UPrfBEjjwmO9R0psr3lmleU/4=;
	h=To:Subject:From:Date:From;
	b=FQr9QkVhl09pXbF6OQvc3r4NudsImTxZ2FrYxHnvTugDB81LV95yPsZRWfk1rGqVB
	 OPdvIZpLKC85DdcK7/GfQlBseGM6dhJz4oEWRLSJ5F+YKU7/2r2w7ID81yxQkC4PDD
	 ADRV8zLUxz9KdCophLKrmVau0mZ59bTf9tg/+8W9HxYbM6P3BRgfNk6E78cbWlteKM
	 w5R0U0InixsoCrqVyvImv6Aj7SIRd/IpYWjNVPTV+En+91z6KhZUJFdf6zdmzE59gJ
	 mzAm4sRvgK7bP8Z5t0RPRQKVnr3DVwa8z/TfDVyye81VUYiQmyUj+xwYLIPPCQsOzm
	 4KT/PmXsGmBTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4DE2EB64D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 03:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168800958885.388.12934064807304852287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85452014b2b1b4da5a761ba79aff76090e3ebe3d304af1699accb8f1a7929028
Date: Thu, 29 Jun 2023 03:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688009588
