Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1012F18E33
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVkEFI1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87903C433C9
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698707896;
	bh=bwxb05W8JmqtxdN5FFVaeeQ/tKypK1FOGHKLTRPg874=;
	h=To:Subject:From:Date:From;
	b=jVkEFI1E1H8gluGZkMGavJWFxppxaM8kjOhTbBC8TK1azRN+jGvbQOgywm9j7QBaP
	 7YbHkT/5tY4YLfUyvC2Klsru4ERvDdpK/W/5HMl0Yk5qpj9VzV0Bkl/p72fSV36xUS
	 WgUkZu+MRN3lBhOgd80TDCalc927btfu8hxkCNH3209Wwth/iyI3jsLSDVy6Sl77QR
	 yNy76FVZaRI+uOvmxYTqcxQMcdJztAhbo0oTTq68uRe/I3TjLXeDL5Ed4FcMz2mrQS
	 y6x7amZvi03opLd9n8K+4ih68G/9UqqQ4DKDyy/UbeSRFS9ISagSgM8FS0ewiY+AS1
	 lKfDkOLzkKWOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66FD6C4167B
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169870789641.30340.13885784499342342618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f37987f41008f74694bc290a5f01883b65bf6f72a2e4a2985d67159de059e4
Date: Mon, 30 Oct 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698707896
