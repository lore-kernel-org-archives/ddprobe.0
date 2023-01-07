Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B311C32
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94FB3C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673105487;
	bh=ALrnARgHovttbBWEIhCpth7BN5u7Iuv2YZJo6VCZYdA=;
	h=To:Subject:From:Date:From;
	b=f22xGf2eSrViDtjLPsWmTz8WDYvvwENOXveeAXHClegYA7kXIwyRlxMpfwU5zYgrO
	 yCVrEBi9xDCAw+Ouz7VBYmyZVHNnmms9bOz1DYFfACgV1hVBOIKK2Davkyv5KqBg9N
	 TQelsg8QAxGzHhUZDmLCAyHge+5OFfc85rwl2VBQ/7oPeT3dn/cuZosynjYmVVMGEZ
	 qzQHIW9G273NkYDlOMl6Zv5LLvVIED9np1D46WvILptBWOHXiRXae6p8beYUcJWk0l
	 ysZ2cMgHujNClauQFpib/gx3broFiNxnz2qkdhNEe2fIFhqxCbqZnQcMzcoEHVgA4z
	 wWR6bJFuKeRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666B4C54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167310548740.15331.2738463701158130684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a71e9cc4942111a7bd04a01810b9760ef2e99603b86620975764e1ddac0ed31
Date: Sat, 07 Jan 2023 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673105487
