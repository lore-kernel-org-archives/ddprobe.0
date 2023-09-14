Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8401C13
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 07:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED094C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 07:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694676849;
	bh=Fzguj1XjAEVShFnbIgkI6V/rLcJQ1LL4DCv+IOSCArg=;
	h=To:Subject:From:Date:From;
	b=qcs0FWcYS5SDeb35qnQOoRaw7xfN+B/7HUcScIZH2q9P+zCWw0PqrsA69pXfugCdz
	 KgQdFkJbER9PUf8Bp970VKxCAGfi2JTh3jTpM8dElhxrUOv6m1Kf8XMXeKQpiIE7B1
	 +eKI0a5wCOAu4hhxp1cImia+KU38C+M1MzrSBcd/uWLIe6fZ6sdxYeFK6JtWdekF7m
	 hpGcXdh35DL4/KwBfeerPL8gzS9Cut7pM7x6Fkb3m73o/3DlptCd3knkKYdUQkM1RE
	 cMyh5lN/Wxabpv6FDjJuR8FvPJXLzlYz7rPJsfJtiIk5jYN0SrKhpCtZBpHluqcWX0
	 XraWVneLz8gMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6B2EDE98A
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 07:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169467684881.9466.17627010021557816858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8272e41f5e857e1c1b077f6d9ae4844f79fd9134e32dc74902419e4ff5690432
Date: Thu, 14 Sep 2023 07:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694676848
