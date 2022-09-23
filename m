Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B017A33C4
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6374AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663928453;
	bh=8FLlDB+aJlygXHa5RBkJOoBJFJZHDqnVDzkwTZtiDkA=;
	h=To:Subject:From:Date:From;
	b=N5um+wNGnup1yRlBjyXctUE0pBgVC/m66HSxwKatX4jDQT2Y5y33HGgs1QKCsSlCx
	 3WAKnFG0B/DFLpMVohtF/+w7FvIeDo+H4TMQn2oClYsljyTEIO7mGrnCEK70ECSFy3
	 mLhgP885o9gGDyuoifFg357vcH9NGaAUebmpRKT8HE1rHBizwCmOJs3Y6Wa32NxYwQ
	 YdE0ZqBikMJjTH40afDeSZNYAriCIzlhfweATsIBkVxY4vHbl81hxZc3xqgLqinFD+
	 MdW+026/ZVpWhRAnNWyUtBxX/gTaM8jfl92UJHsB1JB5fOCJYMRGBt+Q0JqfFbnUCA
	 4AMS2EsfKX8Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAA0ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166392845331.24679.6382832512519132499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71a89a0f748f87d890c776366dc820416903380d5090c648c092478d1f04d27
Date: Fri, 23 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663928453
