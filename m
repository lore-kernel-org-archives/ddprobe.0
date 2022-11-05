Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D624B1101
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D78C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667611254;
	bh=G7P06uBhRWO+PI/j9XOqTE2SdAJ2FuVnhxva5MCzQ7o=;
	h=To:Subject:From:Date:From;
	b=luLu2YfwqPpSzBSYmo6H/i4zbeI9yvxXD6IEtizzbzmzQjVbBTsooTVtNjqD/Wvpw
	 gk+q2q0VWo/N6TouqD2GuXeuGmUPXtqkvQRRbYjou7RijR2hJQnsDHMq1WvMhnAHSn
	 beB7J4bnzzgnaWO+sevP55zs86rZlv8l2gJIEkiWKyKCzxeObo9DZaNemfcIPmT7TG
	 h/7znIPW6593MeMjncI4rythe+NRwgw9ppGEu4uTMRZLjKQKzR6nKUlXq5bzeJzNOq
	 dfxQtt+N11DRcG7L7T9AjJ4s2q8G6tuVVM2U5WN23hT1QN+JjdHY8D3V+FI8iAw7ug
	 FdUu0fLDB9UNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55499C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761125434.14915.12943076900709712316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442876c247d6729311b166a5913423780c8e366e6e03d1dfc3419a870cbcc6ff
Date: Sat, 05 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667611254
