Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C668A7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C140C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672651887;
	bh=KxjAAlwKdFuIfKzuIF9U3XdFAzO6vKiTXbfbZQmZSSI=;
	h=To:Subject:From:Date:From;
	b=jxMe7QMLq6nWiOEH9bzSJWmTeETCPVK//P7s7lWAc/ETtfE2mpVg+eDkk7iCjjzz0
	 yVggFE0sJi1jG0mkK+TVOGFKyOtlTPa9/3lOpGHRVRsWfEbVMs5V0IF+jvWWUol2wU
	 rBpbOA3q/1p+i53auDx4iZGJTBRoHt2Gl1s6cwH0KSp7qiUsIk0wAYAEUODmjanfSP
	 UOPJkc3zBCmO6aVGicvL3P+yRYYWvAFDvZazrZC+BaYuU7jtcLP3I9t67LyB6oE/3/
	 1nvo6G70fTxJn6+AkTK07c7iGkHlRss6LYQ3atzQ+QUqlrQ0gBea+WtnWdWLLwZx0s
	 ZcB0TkCrgVUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7EFC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265188738.7634.17545959801287637048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e99a798fca4d6bfca9be916a9c21e954b49daf47458ef4b8284eeeb1475b2cf
Date: Mon, 02 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672651887
