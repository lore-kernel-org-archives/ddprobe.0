Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B7741858
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 15:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E05C433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 15:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690126328;
	bh=S5jGd0hK+uqf+Vurljl6mlshvWidmJJXmQAilii6gEk=;
	h=To:Subject:From:Date:From;
	b=vIf21hQv8uHpdieY35jKWy8Qmq5KqFtkqs6791oZ00mS2Cc0v5fxMfZFuRbEiXWug
	 gTeVCzR7CAEbJN4yD3UHBq5un37W1iatG0d0WOG5Pa4kI2x5bOIaBO6UeQ3TzIIg8m
	 SCThRahvy9DtXOJcwKx/GVNHtDIrTzI5T3P2EbduDphZwKd3kU6V8CnIoZ3o1Vrgkd
	 Os/UNAfiOmSeHFzoe9B/zgH3KVkSZXKvqgmZJy8nhTqetv8Lk0aSpNTNBwJcfZaeYX
	 qrP3ThhbDL+6FJc6ks70UXxMj2g6p0lqbOdajw/4Pe7LnLPnDmabQLB93kBgLQWrVH
	 0xz1dWkTdQm/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E64C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 15:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169012632873.11740.17175000435900928809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022cb3c89fdc60bf2d5c4a6b98ac2324aa90840a582147aa908db1c11009d161
Date: Sun, 23 Jul 2023 15:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690126328
