Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABE174699
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6CEC433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666037453;
	bh=qz2rXqtIU0Mt+UtEURwRZGKxx6l7ZAgnuhxDdeEWJ2k=;
	h=To:Subject:From:Date:From;
	b=lHTMUVA3v7gZILfK+WkSiE2MfqJkaLLVq0GnLZ7IAgjWuwt9A83gTZtj9AiC9630T
	 LJNM/in5fowVkyPZkfOsFk/AMzdIYUEE+vWyzqvIE5xNw/mom14kca3ZX5DdX5ztz1
	 d8j4BvtF3d94MHuhm2FsdBC/533UBv+3XkAjJbJGZVjMG0jLu4yPQ+KZDUE/oE8zvp
	 I1aOT9CboTmJvk3XaH+k3GdceXxPpZ1XHtvMpPqkhLVme7AeCRjeZw8yyJXuX8P3jb
	 9VIUFJhyoB8E7gZT6bXwUC/tY5I++fxkoSNSaV6AUsmeZb+vejMetcwMNuBxJLlvIA
	 hE2PwXdnIP+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DB1C43217
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166603745335.17816.12793930359862080994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7aa4ec9e1742663047ae48a9d273490254ac0a470499edd20e7b27cdc2bfcd0
Date: Mon, 17 Oct 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666037453
