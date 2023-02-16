Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A7EBD0F
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 19:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F57C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 19:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676574785;
	bh=5uIfdnsp6eV4CkH/Y260zWk9daMcXVGCcHrjiR5hRyU=;
	h=To:Subject:From:Date:From;
	b=dbrmtoJQBek/Tw+emuFSOQpf56weyNNGOOxUGAEQH/iyKL6jxoSz9yx6FnkWBdxcY
	 au4uTLxm4ZUejJjnHOHc4DXBBGWEIAAW/Ksz+L31g9pWvEqlLdnQvRjrmt9kluR5rm
	 BlJTYDlqQZwVqyQwlmafwqEyk1KfoKru6wXHpOouCpj2USiQpv4xnZyQaJFXAPREz2
	 xUTNr86OCft9RAcR5C7ujdKItkGA/iX6zlbSMJuK4uY7AmL4bzRX7pIKEBgZ8RGnaj
	 PMRUKqUKxaWkQLDzZYv5GX1NBG62EaClKaK4Bw98lCKNd82yp5OAmfca5Vw7gpkVkJ
	 8wkaLidnj5O/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4C3C636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 19:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167657478575.16916.1819260028449223178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4767c1c17edb531d68e2f65ecda7fcb7aadb887926ac09568e0e375debadc8df
Date: Thu, 16 Feb 2023 19:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676574785
