Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C21AD3C
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 09:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE67C433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 09:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684400765;
	bh=4Vb4T0jNsRWQimu/NwZ3q/4i4FuG4ixpz/hkFWgtQNQ=;
	h=To:Subject:From:Date:From;
	b=ckhOC2YyTKavHb4jAzY/wwfmuqBNjn2znJOvG+LEhMV/1ATYrdbuExkUrbKQnwz7F
	 NObL/dAsECfF9hOMCk+r3ng4nHqZoYVWwMmX69tl83aAPgaLaXH04uAQUuECwvFPeK
	 LYinXTOE9BMT7Eih7xjnCU5YMLvnQvHAwoAQ+J+I6R5Vw0GoL8ZCw3g681YKpWH4gk
	 hzCp64aQqJt1kDUTx2Na8C0uvG5Ck0BRc5NI0H/GFoxgN8SiJtjxuBCV3fUX/vo8sW
	 dIlhFzTrG5Gc+yQvQ+RKVovLhOCBarTftOWR0oj+2ILk1IXC1eGKb6bwiJjotejH4I
	 PaGg2lsdWajnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B15C7EE24
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 09:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168440076572.12784.1403843846392753197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5902e6033f6439f2c3ac7eaa5237be7dd95246bbae4979b4c48650451f7f8a5e
Date: Thu, 18 May 2023 09:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684400765
