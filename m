Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59403C26
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65D6FC433D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663854653;
	bh=xu8JrYHie3SutLgYkAOPLmYdEuGNKnc5dWElyQtbSJY=;
	h=To:Subject:From:Date:From;
	b=hXFhAfMssbCxn+va78sMwFrWxQKET+bWqy24vhCPWHjNtw4lZRneBfQ9aEpip4+/O
	 zTtZ6skoUSbeUK3Qg3aBGZi8l+dOX7FXGjZ+CUyrOe25/c+qzM2uq4aARUTuCRyCcH
	 g5QJ71oyQN9SfPgLsFi7kENwwE5xn6ezqT2zl6XI7+IF8Av6NUthDVVsckPJK+OdSl
	 +Q/aSztP5viOiJXRAG4XDLSkbRJDIdxekGkToai/+wp722SnQrJt5Y+a/mpLfRcb/C
	 Tpv4wZEhjZjFaZ1KmXeI2imW3FnQ/N4mrs8U+uWHqDT/zx+xVodwp/qHFZ5OqpjoMt
	 JeZg9jWcHlGVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F260C6FA92
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166385465331.16344.12046918029941332546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0330e2c3b5e8ef061f490e7ae086d843050f4a43212216fe83687ca4f6bd166a
Date: Thu, 22 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663854653
