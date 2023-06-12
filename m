Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A4FD2EC
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 20:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA27FC433A0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 20:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686602706;
	bh=SSuQKwhePGpcFJcdxiIfujc9FheV6fMX+FwMrzxCSP8=;
	h=To:Subject:From:Date:From;
	b=b/C66QBAPSBQLxllvP6rhSKZfGhl0w1RHCWxqEwYU2o/O+umUdSFVc6crZR2GegUE
	 gLYiEmKuPpa1s1ZhhWb2qda3eeauZ9gSiMynkLg1YQ71F1ee8mODi23GbpKG3Xmljs
	 HFv3ak7/eh8DFfWmA0iKAiWBmdj7ogJUknrzLtUARKnbtVwqgIYvQFfMDgHYSWo/Er
	 ZleUcmArXA47KTgYwUoeWUYT4ChzbQ9rePbwSR4bqoY7eXYhDdZEOM85E3SWohMsfr
	 zgboocG+/nkTZqScz8ZbhfC9DNCode72c6RCwhrMhkume9wsjr88up++vyJgemRAKC
	 zAVcqzH/en8YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD20C7EE43
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 20:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168660270581.1350.13443283966058657932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10f2b6d16a16a46d889bde4bf38692abf36d9763d803e375485b3e4a034774e
Date: Mon, 12 Jun 2023 20:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686602705
