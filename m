Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA6D137F
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88724C433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673004687;
	bh=EiiZ+nYslf5q5yIKf6Rid4jJhdml66DuYFiNPAHq+yE=;
	h=To:Subject:From:Date:From;
	b=OqfdsC9Mk89cc9HZeddo3+pVw+JyMxF4ZxGr7nMqvjZ6ep57etZJ1dtcaEkkZvTCA
	 fvL6BONAIDOiQk1EI5MMOKO7iiyhGh9zJSWoXdAUPeXZnUVMhM5ykD+6nLna43Lv8k
	 zz14O73lCjyyKT16OMZeP5aoZoCqlfeRbFTGcSz/gJ+W9BMePKKfFoVGzSiJ9eFXv3
	 6EIX8X3PTgNik7zHlDMKVDTqgXQb78DkUIOx56s1GvlsNN4BsJfiRWzsdM9wJSlDr+
	 vd1xZlw93QHPBR9NAcq3qHIm2/Wl5DaMkB/9XWeD/mM6VxdqVz+6cmkV8B1GEDd41W
	 YVZ60LDYKai/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8CFC4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300468743.13537.12077095416377371616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41da90b726aa9b9d058201a9797dd180fd407404a2d0d473d5ef38cef50266a6
Date: Fri, 06 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673004687
