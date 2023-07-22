Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6881D2FD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 15:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF014C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 15:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690041128;
	bh=uKbEFrbUFSihClUT7gK/reynFiUw0tcgWPplcIKK0JU=;
	h=To:Subject:From:Date:From;
	b=bBdNmhFM3seFCEMslUZ2V9MRBwQvbG0fO9yzFvoi2iGCyDLypi5UGIxunjD5h1t8U
	 cp58/FR8rLYuGn75kVbyZG6p3RxOo6dl2nEa08HS5F0qeEvlcG3NXWtlCL2JsJ4VmB
	 8LdJI/oJmP3iTnk3C0LxQdgdUjvLkHekR9guE8MJ1cePD7lPa4yARTQZaqbxygvLRt
	 xykUo92Ft1Roju08wwXzVeTMQXg8/e5yCRSx0XElpyox7FH3z5WOTHpU8k/MJ1JrHy
	 d38fMjRaGs6/JzviXMlCuuylmAG7pgzVI6DL1cpCvknjg9oU2OciNahCbixaLup468
	 kt6C+LFMnSnzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C16EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 15:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169004112872.16270.11815787246130665015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc440b6b57cf46d15c1a617b62455eadea1511f57c63db913c91bc239d6bdb1f
Date: Sat, 22 Jul 2023 15:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690041128
