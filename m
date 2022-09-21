Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC58C3211
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B89EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663762853;
	bh=+6Hx0A576B+IyS5hi9GVV4iIc9gRvNHx8ngz3D5fU3Y=;
	h=To:Subject:From:Date:From;
	b=UPzsLXeuwwpl7qpK/s2qsgE0kBFb9BlYBeS1sUfT54vQPdJ6wODTRrBdo6tI2MmkW
	 9lqu4Uk1oeXNlxptCak3SF9tThWTOBPQjhki6mOhp6oTJv5MsBUoHiphl1jOzbZVCg
	 9p9u4jZNPKAQUKld1tSf5t8baXOZuNswwXoXLglYGKmMMDXrwo4HhKyaw2wHgrRUxV
	 oS6Bn39ssSTxWNvPRhzcYRsUDnKSXiMQOdig/e92XmFNDwcjVzAS/u0TGcSRjSGCcV
	 6vZ3cxPDDyKT3qZBpWMURXILYnT6hkOzlAB+9sqX1XpbwcLVZWWGOWCb2ILYk6sULI
	 J9Y4coueb5Xsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F677ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166376285338.28884.15831300776685306193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d938c5dde839515a97b6afbb2edcea861d1426ac323ae9950b45eb6a412829
Date: Wed, 21 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663762853
