Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831931803F
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 21:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E308FC433C7
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 21:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696195568;
	bh=13nn9Jg2ZwjD27ExKU9UtqdYKecw0JzNEXLno0eu4dw=;
	h=To:Subject:From:Date:From;
	b=mu++K4bcGzFgBsI6njPiqCEgFswTVKjJHSLNeDhratAAdAtLIuJVPLTMyJUr/lXdU
	 d5PFBiRZguKdQiiS6jQEccKXRNXSZFDO1VM6nggHkfbnwnURwjmveTcpwQd/jEFdhK
	 C1niBDOkrABQwdGczwB+RahO9Q9DlixTSrLzyhYpakoIA24pYUrtKP8GavmqNM2kHm
	 48q4DaICtYbslU4jbsd26JmJWSAE6s1GH1Cs1FqAYCshTxxssHW4lNNB8qmASjd9s1
	 GVQPXcmvuhtLOIc9JUn4EWhMCeuDkNfVfNkcQNSu6kVk22SZnwVCxjJZ0Fs0KRE/K3
	 9LSt4qHE5yKqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DB2E78494
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 21:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169619556872.1621.14165979157317328792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a030159165e643f473440b2bff0d13ff63b5201783b6cc634863be3c06d0c84
Date: Sun, 01 Oct 2023 21:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696195568
