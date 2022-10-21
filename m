Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DB317D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68510C4347C
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666333253;
	bh=Ks8sNL9KpUSDqTevdml9MtSmjzrldroqlbdX+MruVz4=;
	h=To:Subject:From:Date:From;
	b=ZsKHJhcryX3Q7oodt+8VA5VyxahruJKAuOGVGQZOqgj3mgiFOoJYJItNyuhj9Ej6W
	 CMkzBJ9IhsT/Q/jz8rXxFZD5ml8zWGHylM4vjM9+B5D9YB6klkgXyjO6Kuwzw2XECt
	 nsO/ZTEBbQAqyhgymnCOrmC5RrLFwn6PU57dkgAGk3av32q+nhVlxKbP+KyeJXrP11
	 XT/YMzS/ZF4wnu6LSPShG8yiZ9YEV9THj8ymuQVvqx/l/23Mq5YXlo7Ys8BnikgX+d
	 yQ13S1rY3UyMJ9IMtz+LGJXkR+pbBHFALckpucEtOIYUOFX1ZX7t02DBsKtavBPnWO
	 4fE9YN/xO8NCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC13C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633325331.29908.17623243311104748482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a9a75a5d140db9c474da74f0269e9cb14b0ab30dae7000fa9a8e5e7c8293ce
Date: Fri, 21 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666333253
