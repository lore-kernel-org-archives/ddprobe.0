Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0FC7F
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B36C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686626765;
	bh=VLO2drKVK7Y8gy4yNK73YPw7ibt7T5gFdipwfJNAjNU=;
	h=To:Subject:From:Date:From;
	b=NLOm6ujtNxYnfePIxXg/UaKErxm6fzzDP/C1gN2jH25P9W49eBfuzOdStYdUrztTH
	 t02bqbJgC7Nc9wxdh6JfuwW1rbMcXQOTTPlr4eyjGmTQxCgJ4PN+jil51oUgOXS7lw
	 Xzo3102jMU0u8L1UaWNfrVxOkl2yt9mfhV+MbQPTpefvGJTyqESgZT+h4QPyUUFukK
	 +4EHj7dqyBbhzgKLFt4jEAqNbFs6mvPZCQRFixMWrVg9oJsjc+eABk0XwEOrYLNSoe
	 3J6ne8huhv4BOTgu99r+CS4aUwMouNjPhJWMBWDWByfKsFZVQ6QTduyEqpUbuOvANX
	 aTm66/utOtBpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B3AC7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 03:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168662676579.28182.14846937134948465752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c181351ef35e28a191323529dcc6f6eac10256182254092ee759141ffc03e1ca
Date: Tue, 13 Jun 2023 03:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686626765
