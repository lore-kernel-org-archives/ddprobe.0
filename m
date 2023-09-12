Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AA833E9
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 20:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6578C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 20:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694549648;
	bh=LElTzg41ojyVHdnpDfPV4cai/sw1Sg8OyX7dGDgT7m8=;
	h=To:Subject:From:Date:From;
	b=gKMqA9qAFy7acxzv/pbwG8wroU79pADITOov/q9R3AEcZywTP3xSycCg9uE+nKOoW
	 YXu2APazEmYKIXWr5zLZoylVbNIW7luAQUZgtM+zVvpTADO9TzLX5tV/booo27jMH3
	 MDXaBvByYjlx0H0Ohhzj00FjrqEGIFuT/qlL0hsdIiSd8N87J9lqcoLNzK4UdPdI7R
	 yYjAtWZfIBN/km5YMlQh7oQv+Ging+M7gUt7i+qQDvWhTiFXQ2pHXsaOMMpyEC+dDw
	 RyHQY3oiPpDUP3XtyHdTtmSbtdMbCBDhoqQGiWj8CkOb/S8ESeR4EwIMpcP8gMbFdg
	 RNkaLOgGixI0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A614DEE3F22
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 20:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169454964867.14829.17475755002016702176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6601b786c61d01163eeabdb2e458ef8a3dd8cbab263a822ee3320b2631bd1e2d
Date: Tue, 12 Sep 2023 20:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694549648
