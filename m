Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58534C7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C69C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662415853;
	bh=/6ww99hmPqw6plOp+W/anSm6yRZtAw3UUnLK7eEEnZY=;
	h=To:Subject:From:Date:From;
	b=vBFo9NPzrHy7p2P6+6k1epH2/7iC3pHJCKX62zrRHl7zDGRraIMfdfKEBX0NPKWh1
	 taVj4wdaPtKcvzoVShvfXZn7IR+g4a+jgyf5GZYQmubVTBMT3xatH9ZQ3YGLrRWBM9
	 mmCVMS9nWISWfK333G11+4qoH37oAe9gr5bcWN2MSMC+Jf1ORhLW0fwuy1A1lY8pol
	 EwwN+GU9vz58+HMf5li2ZYl/x9iAo5QmEvvA87jQpTMvVQw9CZEXiAxdRv5PqsbJ4S
	 pxdQC71WFlZEl/GbyW628l6IVdaqT0ZTeWX9aQ7HpzTeE2Km8le8u+QqtI6ZrQc9GY
	 kSS8b3nCMcOMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5638FECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166241585334.10340.3951955291546325059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a86485501a8518e73691207fdc297fe6f80eee6a67311b51d2747bf9069c4c0
Date: Mon, 05 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662415853
