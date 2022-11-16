Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F812CA4
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A6CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668638454;
	bh=u9gT8AaU6mqThpbyOkw1QyJQnSz7GFDJc1qMCRuliLE=;
	h=To:Subject:From:Date:From;
	b=R/f3Ru7DiUyxYCE6fShPTqWrqOgJNclpGghCRRo02h1kjs9O3PJHjjkMDDdGtZH67
	 RDHT9fpasay4MUC+iJXN8kH52u6FPK/zjjCjr4ieaXWox0O2ssI0yPaTvyaLMBnS0Y
	 9M+hxCJTr/Nsyhl4YO8t9caeFUSY7PsENro4jAq5Ws0seDPBu/6Bi43wTQw86fo1Ms
	 1rNfbzjWH6LI0n7HBJe6cQG9uoEHLttgdLc7XjO2CD5B9AjAC5FDtzLFj3097YRauw
	 nSu5n8rUjFiA4YzeHfanzUIhYhptdwv+riqvU9rWJlIdvHVTVLKnm9qc2VrQdXfjsp
	 q2Dd/seGlBp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523BFC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863845432.21511.13695464992923808546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37942e3f72c8111799989cd719c355a56f3459f7200487e79745dfbd00fb367
Date: Wed, 16 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668638454
