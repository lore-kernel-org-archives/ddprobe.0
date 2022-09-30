Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD1B5A7C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5C6C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664561453;
	bh=MzrR9xEUQgAp6yUZOhYeVUbxPRZlG7L7CNz22RNHwYI=;
	h=To:Subject:From:Date:From;
	b=WgYGqNxYLKR5Zc9OVjX1ydIsvujBHFJGO/dgNyOlUjOg9YLAfaeiQcPogeLF0uw7l
	 sccGx4/eAmBeb55Z+vRBZuTtVWGXYe428dk0y1B6zzspigaQfVOXTQzmisgkKLhsCi
	 gtQnylYTBba5MzdxkRS3n2Sx5kkUkypjABHDmmuWBXmhIyJm5r/KQkTx0VjaOV54Gv
	 NOJuhQNJ2PnapCCbRm5KISSJUgEh8OZjYWMQP+Ugi20785lAxJPBK04XfDMRWIA7U1
	 OhiUUAprWF9DTRP+KzfXETrTREEQK5E7uBtbkrZR2lw1Lzx5dD0TcCyhv8AxoiXpYB
	 DZxoz1L6n1R6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53702C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456145333.7028.18406613418311372655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6a586c88c623a16a5f8762fc3508d5e05a9c86f5f25f6125021849f9c4011a
Date: Fri, 30 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664561453
