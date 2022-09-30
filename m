Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33A17B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6766AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664574653;
	bh=AY84Qj5XGIZOlPCRK16bSY74FlloZ3kO9t5tyyxXjT0=;
	h=To:Subject:From:Date:From;
	b=uAA4lPxmJbNDC26lZCppUAyh3nAIgcBXW2LGhoGIEgVbAo78Q6ihzk2cYamAUiBIo
	 UYb+NoDGJbGgUD9JxnJ0YrcyUMe7EB4P4550cuyIm8I+5lmkxMu+ZkhBUtEVFZz7k4
	 2HEThrPaXpb9kpt6LCoQvsjkxfi1pPlU1eCl/TIjwuglApLXq/CWJxYQqZHr++WiAS
	 kYM0DJeVwTk5UyH7/elTKuZIJmvdwuyNGSxvJssjvk+oHzMCL65gryNaCBjGEpQLnv
	 Gn8W0H+AfWi8rjAoxyWEnSLgwzguSE8X7IISrqaqRUy7TMz8n16jOKeKe/IGR40EKM
	 zHK8gIZYxCU3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5180CC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166457465332.18624.11724302363226679653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd980d82b100c5248acabf4d4ac5312d949c89c98c13b86ca965cb8c4e12cd3b
Date: Fri, 30 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664574653
