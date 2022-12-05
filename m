Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94EF15C8B
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77455C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670269854;
	bh=Mb1qie4IfvS3ITHXbqq97e125vrWHTyE7shuo0aoRDU=;
	h=To:Subject:From:Date:From;
	b=JXWVIYl53zN7Z1s0NVDdAcnWpJ0xGUKnHLKtAhsN5//S5nRq/jVNgVREvKRq60kUJ
	 EezB4abJuI53XJEYpYOlfclfUk0MAOM6YYBF2e9WJ/duvGbzuIrFieUugwBrCCrWHP
	 RNczmltoDR6sN5DDl8xexfBXtOglcIcXsm2VlX7/WwwkhZ/ypy6dazMy8NgzgVDUXn
	 ye1IAYoatSor2JQvKa0W+z+Yzbae8DrEP+Ig+unfjzZuzzaP0ctuBMn7shCsfU5/t0
	 O8KezStTJw5dc85PpvpxInxX6NCRt253soOo+4UShU1uAcNgjlxZF93ZWmN+XwzXrM
	 sZuGdh56lTSEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A0E3C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026985435.9701.4278923195289063770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ffadfa05106f9af6386928e006e90eaff80274262de52347ab01605056d644e
Date: Mon, 05 Dec 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670269854
