Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9578A59
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759A4C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667406654;
	bh=uhnxvN776Zw5pvsl/Et5Qcbyx9KJZNZ6vJs4tM1D8fw=;
	h=To:Subject:From:Date:From;
	b=WS/HXgpApshTE+w9gnU5YuW6PP7NbJ/EEHkuOpEWGu64MXWrWGdGwFBKuuueZkXJ5
	 pJ8zimsNzvUhOm1YOg6C9Zb58dfQ9ZyYe7Sj0KWhs9oyo9M/aRCoq3Meb335GfbDXW
	 sdiUOoWzXiwzGEWksRHML01lp0qC3rqDCXt+gCHokESzGxxj5QpDZqgkE+vL87RMzi
	 MRYiszGL117PnSllFxC7JBSoUPVacXJdXJpshwAPcvCNGEO81m13Twt28kWS/MgcFG
	 hT40+TLxtQ721KKv3rhc2w24Rf2bxuqMYWiJegUsZecQcn1NKpRvTX5dvrtwYtJFmf
	 yibtOazzFtYMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEB9C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166740665436.8674.10413581472040327473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fec237e0cf9f2e6271758ee1686808cf1c349e8e8fcc422bc7b01ecf239c573
Date: Wed, 02 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667406654
