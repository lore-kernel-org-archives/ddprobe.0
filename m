Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BF917E2
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71DE4C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670295054;
	bh=PcotNyTSAHyqziq4J/Di7dku97yISRddWCQ4lreKafE=;
	h=To:Subject:From:Date:From;
	b=UxyBfgrbODHCvy4LH5hXo4s+uAVrSfXODyoqIMwx1V6+hVh2OKk+GAN6f0Vl+sADu
	 XPI8Mxe1cuGv2//NPWhSeISga1Ya/zGgHd9wd/zY8NTSbnuoSNnaU3fTaWe+YA5lRS
	 elzAq8azwMzZnlW818YO0Mfgbw7GjyVfeBChLm93vB0Elzxh7AXZ3sR7hLCAhEq+ln
	 gUR6edIHKH8ZDC/5UiClY+ifnF6hKttbLpsdX0VdQU9LLmjAquex1kt0IPZFWWwDp/
	 Ym7/5vXN7ZkkGF/b2Tg+LvBpQJ2pYfIucK90uy+5T65zEcWUm/ER+JIisCldPSZCm9
	 8mGa8hIQ3GwLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59378C4708C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167029505435.5203.11176384626115299567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd90f8a1b4d8f2456d2b7777da56c6ef714defa94578f9bb47270ef77210485
Date: Tue, 06 Dec 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670295054
