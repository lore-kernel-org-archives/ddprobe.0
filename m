Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E7B17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC56C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673415087;
	bh=TcfMQgGFq0arFPb/53ZZgcwyAhS2200tR/cnHM/6a48=;
	h=To:Subject:From:Date:From;
	b=t+rQvHnUC4tleO3YNoJgiajGWbfBCjvnk+uJrWGUw/MUY1Y/jXhclcoq/KaCRX65b
	 kswnWdV71/9lrZFmV1j7AX6+z7kcnALvDPTn7s1DxSNyojewhMqGN4GbnfOCvmmXTl
	 NIWxNhlawJLs9sehEpeUUgCJDmnToDctbUSz1T6z1riRAGTMkSZ/d8Pq9jF6UoRPe/
	 hLnS2bgC30BFg1QVZtUIbAJRHmAduGKccHpcXNuAFuQzM5AfYtiCu18YcYu2ReQmVA
	 tpzSOtKcsM2eYH/7iMhvXOQymjD1cL+AqONhRX7sdzJgW/L8UJYVqF1P579DNtC1jm
	 t9TpSjcr/YlAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6705EC46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167341508739.5502.7667980065736286799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82706bda55e1f28a0056a0f36b184bc105ef58bec16438fe248c6107f204f0e
Date: Wed, 11 Jan 2023 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673415087
