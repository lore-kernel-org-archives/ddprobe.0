Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F5B5C92
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 699ECC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662746453;
	bh=WZaxakYsyWIUMjPSwICaMlnvaB+J28CnkrGmD5rKtyM=;
	h=To:Subject:From:Date:From;
	b=lGJxb25djzUyKnhMGE5LAAbmKa41gxiCt6/iTpIEyaxTHOGDuyAVH9amxMGhrwaH+
	 z0In28rCJOPOt2tJXkSdWSARxX5lKpb2aIR5JbpkwYBvwtTznV5oUFDL7He625XCQV
	 mGgrM9IP8z9dJ2SJMGbNiHrGs6/s4GNPSIPuhB/QsV0Cf/wXaR5dNAAxjd8YeaWfS6
	 EdW4sQaLl+L3uprn7IG6Q0miz9JhPoEafJBPdiW3xP/2Y/Jcs+PCaL9Cr5LmIxbgaf
	 ibhqZuxw+7OPPnlwqEXB/Mc+c+snck1/wLYk6utmLxU+8UJjgJmiNp3V4NKvIOfrSj
	 rzT+21acLvFCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EA8ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274645333.11666.15140214058000764388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ef2533b09dc4f15d140c6cdc34428bceecc26f487a9efd5753c9000dfb887e
Date: Fri, 09 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662746453
