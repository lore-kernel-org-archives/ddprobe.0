Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD719620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80782C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661911853;
	bh=eCR3b7IJXrYQ7a2JEyWWRbYN/69PbBvJRdwdgedNZhI=;
	h=To:Subject:From:Date:From;
	b=ITM5inhgmdE7qxfhsW+uXe4pSCBQqi/Dm3yHQ++8XmfOabxIdq41ee72woItFiB/9
	 53T34fTX5cbzX2fQsvzUB1PvmezQ8LXvfZABt6EV2scLW/EErdjPP1+FXcO/Iq5mNC
	 pah9cOF11R2h/YR0LPlNfE/vlYGRq5D4gPwMJnmbOPZgB4M9uAoHJEzpTAiTbGEdpg
	 6YLgpgGOauUUe8fvpc+iJtzcWvMFkeYBb8NMcOizKiyfwmXSbbHj38GenMJUKqVj2s
	 STIWB5dtvE37Gp0FT9FpT7ZHT7P1eG5RTjIYYa/tnW54NRGczZ9YkZpj7OvZHWarhi
	 Qz8WUVsSL1LKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60711ECAAA1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191185335.20539.12993710028548041017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66221281363af6d3108233c361667f3182b421922cc17706b3fde75bff909574
Date: Wed, 31 Aug 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661911853
