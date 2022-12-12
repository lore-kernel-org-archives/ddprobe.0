Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5411854
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90E62C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670805087;
	bh=zvw5XMqqCd4fMWEMVVgvmhkgsUqkyyxihguwAZuJfbc=;
	h=To:Subject:From:Date:From;
	b=ounsvRM2b+a4m0V7BBTGsSlHn1h3qFx19EFEMcLAl7+hxSphiqrFnj0mzSxHGPJQV
	 fzqbb9viQJZicvKkrrQKfQOmiqTivQonayP8lMwlOlhgT2YO6+dExVUsGAFTAV2r38
	 4ceYYYeOXAFhiPTVUWUQ2vvnULkHC2TXyI1WYHq3jXWitcmEZPl2AJShyqMNNqmoBe
	 U1xx4ztJVYpakupUKGnKCzVTBOnn1veQA5Lify1vwLBP8e5aejRtN5uJsO+EcP6XXl
	 1A40qFlmAJIP0d3Bxq3uyW14M6IZnNjyj5ylHe8f2ViCxZ0bh0T9+rXXwZHayjKGWk
	 cEwSjDOQyOrgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8ABC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080508744.12240.13507699439164479481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373946a7697f4f6a05dd7449f504c33fd150e4c80d21149968ef06308002d356
Date: Mon, 12 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670805087
