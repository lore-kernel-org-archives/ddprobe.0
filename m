Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4632250F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk7+/8pV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC19C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702640896;
	bh=wroBs3RhRW/OmlDvjH/3TUDyjVeKQQIoZKBvwMyHWIg=;
	h=To:Subject:From:Date:From;
	b=Sk7+/8pVFWpc3CnIB33TV5Ru9OQ7Dnbjqm9ZK5sUdKjDwFkBQUgOc3HRX3UIOl2cs
	 eIbhAughEuF4E6kZgKMpB1p6ZprKRgm2FB67GZKFxUg7RWgl1KUBjdhgcopBzsj/Aq
	 CIvnT4aLGaeN5mtioJjKS9z8I6ri69w3QOH5l+hFn4TJb8jQok4p/YNXI4quUK9iV8
	 nyKVQqwkFv5X473x4e0jgZtrVtn9UQGVWI5BpevMYhsXq23gFKXRydcPX7TmlIl+Wz
	 7p/R6XFjRpMFcvm03Vda1VdFUDaiW27UJDj1Z5ztZnyi39FEFaCIhWg5+YYNiBtgvl
	 Z7KOxosPP/EBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE5BC4167B
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170264089636.26044.11431492669233702800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8008e12f2ac802000f7171136de7ad550ffe4a8b1472d936040e1369110cb6
Date: Fri, 15 Dec 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702640896
