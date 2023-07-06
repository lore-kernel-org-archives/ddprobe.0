Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9E78C18
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 17:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D324BC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 17:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688665628;
	bh=3zrR/oidJzuzSxvM8aIZcMnBh3PXHxeyymbxJCtd78c=;
	h=To:Subject:From:Date:From;
	b=R/wslmMgNgvHqugxBu9J6+rcdzCw9GtQeQ9FfJ0Swh07qes0/8jt6d4/hVZ2OyTZF
	 3/x3t8+hBi8cSS/T1yUO+mgNDKXgbmi3ekxJH/0m9Ke41kUI//Ft/Qf7oJXn2wFB4S
	 AbY/gBCv9tiNiLdq6FOxMWTaIzS833+IOAiBGIF+JN88bYfHA2TFRMIESknf+fq808
	 HnHYyi7/nBr8O1IqDx8QLkkp74LGTBW3VRcvFLIC81Eg7NnbrkxY9xcQbtVdLiMl1k
	 zCZnX5PilleNf6s9hHiNvKasJLASUYqE6P8J0Re8bMQhIunwefpSwLxBE1pXCWw55E
	 +oEkVAuxOl/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4559EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 17:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168866562872.27358.8604486590480128223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6a25e0d686d401485bae72e785be0c8db52d924efdf8b26fffa2d4c09332ac
Date: Thu, 06 Jul 2023 17:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688665628
