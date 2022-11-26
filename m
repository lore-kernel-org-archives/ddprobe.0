Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96FEEB3F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6F0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669471854;
	bh=f6FLgAtdBDsndJ7LKg8fEOeQbck8hSj6DjJrq03m8AM=;
	h=To:Subject:From:Date:From;
	b=SAGZtMUHc/fPki7n1/7sBCj1hZzlVneTaWyj+F6da9B0o58kJJ9C8sUYDbbU2MI+H
	 NdfP1FxDkWfJW2o2zMyLXmZ6S+NYz+DcoeTHqKuQsOsDCAGYkI9A56VmUdPyq5+Re7
	 a2DpNFVmuHKhMKtqBoIx7YlnHgwHF5+E6NEiQAmh7wIALvSUW/OtsekChxkRgntlUM
	 bjEYm9LlEcUFXGzqMXUVWSyuq0fxcz19XQJN5PKuAZmF3/AU9K1xyhy3RquQBhU7iu
	 u0xqjSOfEiHfmhZwbXjqg/3TzuIeoTA3C6zz+MWT1AlgYbWNR2otwP/a2zEy2BQZM7
	 RhYJly68nGAbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D41CC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166947185434.16155.7572878061326484348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8162925170f416ac12b56aaaa50f6ba8f82f7b345579a5699738da0ba4cb7d
Date: Sat, 26 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669471854
