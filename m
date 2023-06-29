Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB3A1426A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 18:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA31FC433C9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688062988;
	bh=Or9UMFyY6+n80BBxvX/a/mF2hyoeh3OexoaqV/x/Zgg=;
	h=To:Subject:From:Date:From;
	b=sLYHhRuITj3Z9vgcj0ds8Q58YemdnlR05jA/2YIXGnVN2v/HHp2fNnyBqdBNZL2dW
	 ev/BA7OPL6v2gUOoC5/+nMDp3yREE1g9EMHhgJVE48/BGw++3gcfuG0rlekrdXHdR3
	 OimeadN9NmF3pBRLUsaF53jwQrt8iwiSy3YHDep4guFPpk7qt6x77FQGBWczoYHYw/
	 1ij7p02y7Gf+RH2fb/NkaBfxVzQkl35Fv+MKu3L+78mzJEvy5wNqJoBt5kAAKvv57U
	 RudZ+tkEy/ooEiHX9K+6hlZ3ucbIN+/kTFbqPPUYAG+59qfQtWgl9MezMe0vugv8yg
	 owB0PcVLtW1gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1010EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168806298871.24782.16513749265795038811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab1dd3104bc2e273a63c54defb809588ecf36409219265fbe2510f6e5470e26
Date: Thu, 29 Jun 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688062988
