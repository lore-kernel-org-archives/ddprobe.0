Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA0718C05
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+WN75VZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86EA5C433C8
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700216296;
	bh=P9wDrH11mwMQd4T0lUOlfzKHk246JDcV4N+PvWQnZOc=;
	h=To:Subject:From:Date:From;
	b=l+WN75VZ9LCSvbZCQjgyEF3ys+qPkMZ6gSBXKv5oQmQ2W9Gymyk1V3FpobD0Lbimk
	 swiQBETfmoey42PFCjlQ3T2rnBWrbTwxYA/JPn6/ffhd21ISKC6L6sWbzXmQENso2F
	 3AHcdTJXV2XsAYbayieRXhD/ld46qZStvZ/PZKNhGsER00iiVv+oncfH7vQRqqQH4+
	 83u0aFtGmb1khjVUjYTUYG8WGeG7N/kU8QgFoBUBwNDYqJawIsxgCGtFiOfvb63LwG
	 4IQfFBoqPdniTha5Cia/7N1OccooWqnPilWphLI0uiBKDcHoU1A7M/gl3ZaXyH2IFI
	 d4BjBmOzTn/Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D3BC197A0
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170021629641.19922.4266770280543827302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf93a41c1794d0557b6b871430f04985b72112b0f76609a3bf0e36e93766853
Date: Fri, 17 Nov 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700216296
