Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D76B15AC9
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 06:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkqHaUpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC804C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 06:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697525828;
	bh=LIRO9DynwxjTXN6UZyksTA/UTXxE+pZOGfS35/LPqN4=;
	h=To:Subject:From:Date:From;
	b=kkqHaUpO4X14anPQh98ovAyk5q4pZkc7t0QqyYqh+/IyDcIPPmKN0WQuHpBZf2Djd
	 vyT/1GPRd9qY2i1/wVz/utMgac0bY7xHsaDsdNxQV9EDhxIS4Zh3sy3KCIN5XX/hRg
	 0X56eQK6hsOx1mxt6qUQcrZNlXz2zMZf/5NtPdULclm3C0FZb+MsE69LfPcd+Jr7LM
	 w7twstiyVZGqecqdEWrnmMz/7dF2tymxeyS8lzYcAPek+ly8Ac9xbopL2RQFED/Bqv
	 4HLxRjCluEykVE9+kAdYo1t9OjV1w4OQNkRLA0dvNZS0GOlfQhXFjSq6UFqVISP+/b
	 4tZhakFJjO85Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A201CCDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 06:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169752582865.715.3223274018225393338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2625b55e2ebe4ceec3ceb67c0c083c8b8e2f0f11cbeab851d8afefd54801a84
Date: Tue, 17 Oct 2023 06:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697525828
