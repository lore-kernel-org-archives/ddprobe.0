Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DAB424EAE
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 19:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E06B5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 19:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685129105;
	bh=0UsdqBtnFzWkoN3+EG7OUcaPSLlhXT7Gp8w9vD9pdGs=;
	h=To:Subject:From:Date:From;
	b=BqxPetbkqq2XcF0W6ZMe3/7Uoo1YrAAVzof9ZfEOhP5nAqhtIo/LfiiMwo5CzwOib
	 U+H/W/vRgbbyjkJeGUt0fovk+EAvk19js6uOb6YVMgv2QcgLKutJfKN12k1E0Txqs0
	 CkjTJJDXmJ5p9x8N8L0E1nkfdAR2oVbYhkWMAKOZgCmb9lMf1poGXOZwXGJkH3Fk/T
	 Or2unpLEU1j59EKKL0IskwyCWMG0oRIyR9IZ9BOdzczK4R5hpf7HR6g2rDHaOCWv34
	 3tM7JK9W5kkJrILikZ4uYMvdC6LIoMNik+6Yr/k8k7Jqqb/h7kCL4kXtkY8yjNwIxj
	 8yRbsYODULHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C761BC7EE23
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 19:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168512910580.22197.372479998272385449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96a1852d8461beab87f1fd76fd58c1c9b06a83d41911c2c889abd58b57b7489
Date: Fri, 26 May 2023 19:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685129105
