Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763C18838
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 08:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF79C433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 08:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690360328;
	bh=NTeo8GR00jRd5CUmy+0rlG2OYT5iYHhehqnRGwVFFGU=;
	h=To:Subject:From:Date:From;
	b=ZMm+Rb8jhBuRgoVRx5kNgzYDRAEwJXYdE+b4UfzHGHxjKEsMpEZsTZGQYjv2xBjXF
	 vtfPTm6ca71cheyLj6OCoEki/vUo28C9Vqp9czTyoLcpD/KWcTeykDwiz4AqE95hVF
	 UhPXITab84plrIbQ03yWByew5Hl5wVcditZMhARuksLNoy4KUIBK0bjqLpbzRRpavp
	 LsKPjCN4fPWOfUJfbheJkqTYExZhXCTaWaV92JOjLEkYhSiYAKork7La8mpmRrHOst
	 7uAHvqMFpOoHnguPUAsM8fZML5ANU0k3YhEUuz2qIfnHHoAcqusyT7O6ZNgcwE6USq
	 jukucdMpEfj/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0910C0015E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 08:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169036032870.566.15517691931984231848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0be57a4776f0b582bbd4a91be6aeeeb6cd79adb4abeb7c3abd3a5ce598a2435
Date: Wed, 26 Jul 2023 08:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690360328
