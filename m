Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4088515E84
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 10:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C677FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 10:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695637508;
	bh=tYhbDZDl99SbNgVkUJFxuIeG5pXF5JlRvjWUu79dNGo=;
	h=To:Subject:From:Date:From;
	b=GvVSWdh4QpaciphTyL+zlkAqwNUUw6zgzysTDOhN6lRL9L8hVHw5It8KJaK79X+u3
	 vtNmlvSU4Z8XdJTAW8HpWtEkfkrzDV3bljYtM5k0OduvD+a28nZ31Tkmdua/zVK3Ux
	 Wx5Dbohk3BJi5eKfd4Rj4sEIgqUzf8ZFnVJZvxxrq5jw0ZDZVIoB2Ect98NzBaUBbV
	 907VJ5Y8szBC6FWvpLBgLUioppvC3eeYXctapJjf3Q6/vja7fBFfCfy0IWOu7led4L
	 tHIkYaRMGcDjbIuFpQPJ/2IXbo0yO5UN5Ecp22z7gLxdIzRzfZ+NCH0EI+dFzDNjRL
	 /fu9xgPu3mrVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7B6CE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 10:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169563750869.9171.2650922771555700969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69ca25ca3abb2622ca80a2c1b159a21e255dc125725086846cac1065820e170
Date: Mon, 25 Sep 2023 10:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695637508
