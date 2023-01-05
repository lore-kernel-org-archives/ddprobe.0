Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0874D320D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB17FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672918287;
	bh=mQKmXvhJRE+UFCHKiH0KrSYU999lMykHGcp4Z7Bn+I0=;
	h=To:Subject:From:Date:From;
	b=TmxQ6jZ6Lb8Ge6cAScZyHFX/1Lu7A7iMnacTGetktweec3Ux+arTUWdZpkL1aCf9d
	 eMqDGwOE4N4mqZ3ZYtpALeDuC/AceMPPMZ91Qhb/m2Y/3fJ9xlO++Mv/IsMU3oQoZX
	 zQDucwIOnmA6nUMPgGNNRUJxhEDYppC0ZUlJ/P0JX8ZCCYxHBlvJkfrO4+FZZ5Dxe1
	 YKWYspWY2dNOyzhLMPhStCJ8KFfq9ttxvw3aw/8U/Fn5ZxG+jfVq48hyhCaHcb1CMe
	 qhOxfwXEHzkedwKgkDBdSEHcFSo/uMWjmIUhVYp452eDz71XBWb8M1MxSsTkgiPDM3
	 jnJ+g5J75ISCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E83C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291828758.18796.13796289741321967636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbed19ab4391a447874c6028fabced1b53071c5c4f8b371c61715e6e16321eb2
Date: Thu, 05 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672918287
