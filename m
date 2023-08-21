Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BEF1848
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 07:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B46C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 07:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692602648;
	bh=uvXfqM85wwBq5vD0xTSDpe1iKl4UUQiUDvkYvqbOh1k=;
	h=To:Subject:From:Date:From;
	b=ImTlpvcnpyh+k5FM9AdYFAZkUfBh4UTUaE3yPyAwamfMvdwGVOyjfNYChIU+Lj3qX
	 eySIddNvGggLk6AuPGfcTmnvgjxROfpF+lv46kMAwKmvrRzl2i5Ngrv74+DKrD184c
	 ORZyX7uVugfFKsbWnJ3BhmhxHuROG5+8TlL/jaDXOrhyU8rjXdaO26n9Xyb2nWZGFS
	 2vs5dHmva8N3XjLa3C1W8/OSQzYeLC0L17ntphDhQyfN5AlXY9tYAKjNR7r0DgdjUP
	 vJWGUgcjEOiJsfz7Iq3o9l3e8Znr0omBAv/HCzUoiPQppoGy4kgKyB8yhfPCwkjqIy
	 buvklp/8CpF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A769AEE4993
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 07:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169260264867.1576.17621859254887712718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674b8cd339bdd595e7fb4a4f1c0e8c89a80ad8e465aa6b70729788c14fa99f6c
Date: Mon, 21 Aug 2023 07:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692602648
