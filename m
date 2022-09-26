Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B764403
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B04BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664209253;
	bh=cgic1A0hSSz8/tIdqaivvQBqQfmMIVxQp7KOpe991Tc=;
	h=To:Subject:From:Date:From;
	b=sfIX5LJ3XmcTKBITakUCB4XV3Q0c2n16rASuzFdQnMn6qrRN4JUpld36LzNxZzTG0
	 fglb57HDY2R0YSJ3EugHE+yKnGcr98+QtjtlFdje1D+Mj/CMajEGvnyfHFaRp1TjS6
	 uMyauR8BZOkmRJY7UP6FKnP8IgetCkP0x1Hqno0Y/OQyui+Dpx7zg+G6nVbyY0Mj7j
	 jfw8Uymy1DmKM4bX9/Sa4zO85qzinuNykTpfHkWjMrtq+3AIOjkK1gzwCmMqs5Cpho
	 7NTkWnINnCbiLpZiQEK6jQ/e38ws/cIKECL/pHApXXO4FLAOR3X51plSbPWskd6WBM
	 0cyIDUeadLHbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554A7C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166420925333.19379.16675394663796605900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b5e07ca0d58b79bd9a74e0fa9b287648225a3c73fe95900fb498e8e849650a
Date: Mon, 26 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664209253
