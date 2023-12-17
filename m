Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BB945BE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3SRHfhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89EAEC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702848496;
	bh=vxi6ILn981BG8xmUTa8vm8A2J21CkxP1H5ZS8LwshWI=;
	h=To:Subject:From:Date:From;
	b=c3SRHfhMEyD/QgrQsgo/F8NamkscgGPUkgpOwNi9B7gI+Adpq5iN0yoJsWT/gOCwC
	 db6SkgT8R/3ZVAjvmc6WiJr+GZDzYLDs03+p0bcNpPPAqm1sBaXrihe8CDeOn/TEpK
	 tYn3JAjFBzXwWPfL3cmonl7v4R5EynOuOAK/wYcY0/BptCwywb10wJVceIbqG3KQ6z
	 jLzA+Gkvbhi0rXvpiLy+O1MEVQR3YKx973ZwQKWqyKtWhwVU/Px9483xB39FJO/2p0
	 aILxFnpzPXe/kOIU11taYGduERjjKl8R2MJ6IAKkf0Z9tNI0GmXxh9ptoqE3V5cNek
	 gX7ZnVxYMUdIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BDA0C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170284849639.16944.2817981085905556579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1a4a95337aef5c3953d41c75aeaa0b0f54e55980db27fb1be54ca0d43fa673
Date: Sun, 17 Dec 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702848496
