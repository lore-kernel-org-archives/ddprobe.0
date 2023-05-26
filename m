Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F24015496
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 09:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F19C433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 09:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685094905;
	bh=vogKW3ZWzbjlkQW0ICAQ7j88X535rqnno0u9yazCyJc=;
	h=To:Subject:From:Date:From;
	b=JEU2KR1cgF4B3aUN5ewSLPBWFcXLoAPYhcnG2RKq11A9dzhjW1aiztO7MCgRZOPtI
	 F2UxP1Xv3CA48xunLv7pqIpSt3IKpZW2LvlL0BSPYco7sSA6+HTkZd9/5cCTVCGBAu
	 GN6X262GpRgEronzD0ZDE2JLIm3PcsnRxVnvugs8G8r2JxtbUjMUuMzun26vbwBKi2
	 gi/VgUpQ+gOuXKNpXAvxk4IsZGED0BjEHDVLcx02qd+Au7e54Ij7RSEKkvz4Etc6iT
	 Q30GHtIDS99NEu6rSm5LVEbOhGsmSyvM6Hyu6wbsANn05jHaiv0aGrKYJrST/Xco+J
	 xkvmwXJisv8gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0885C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 09:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168509490578.3032.13970750387931108476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24b3bcf5953bffa1b4a06a24d33727c43d8147624ab262f03232dcc4e30457d
Date: Fri, 26 May 2023 09:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685094905
