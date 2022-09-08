Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0517C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71CE5C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662604253;
	bh=Gp/7+KqioHw62wkdLsAPr5CZIrVJyKCZ/p1TOtgH79g=;
	h=To:Subject:From:Date:From;
	b=CnLy3/MaSLVqKhgMwSJzaXjU0NxzrQDVtS+neId4mOayRal1lRFA5QrN0JYa57+YI
	 HsDeVqC4L1utbt0eQlGnYAlrAS+1FjTf7dflryCT1cjSXEm+EoXd93+qZjEeO9VRct
	 J2KioNswTNGNGq6uKN0sh4RJcEhD3Lipl3/74w30hOqD4Aq4mq1d/9OWV9xqXv2RP0
	 LTG3BCcG3FzU+eb5lnrEliOUQqDpTInPn54MhYkUU40FtjaaR0aSJvpv20lPW3usf7
	 pkmpU6glJZs9wCJfL4CGAnlsiQwYaXpuvKluHlgvd/hEiemfWWGwO+7iDHnwQxDUq6
	 1n+kkNdDi2z4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C41C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260425335.16964.1612732864247217233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed5bdb953c74715f38bcffca3f90f2f19dcd827ba21148dac63a96827ebedd5
Date: Thu, 08 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662604253
