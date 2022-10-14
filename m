Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C781436C
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F38C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665736853;
	bh=NBGFzjqUOsPNCeMFQeiNEgiBDRY9nn7oNiy3ZAJo6TU=;
	h=To:Subject:From:Date:From;
	b=LG+NH9QWmzS+65o6c7asmQ2GwXS3RJg01G437kDKY3kQE0/YDjj3vxcbDvt6AZrlH
	 dsHOAgollLdFkroQI9+2UyJL69KkKJq7y0vmK2tPfIJ2dtbkOv56r1jnl6L30tIR4H
	 63x0rzzQVSR9uMbVtObKEe+XDvMzYSb5M5rOofRPB/n4aAWO/dE7vbhHAX5p/MZcZ6
	 QAcIicp1iugDL+DRNg6wBHtSSjGVoIL2csL2A8pwRUnPUIeuBM/06PGygUN77gXyoX
	 8mAoGGh7eL5/eDOyKEsYlI8u/G0F7xSdx1Hk0ubB82tCAbtmdsUzlZTOZPBrxHNf7O
	 YzDge+crMQwSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5898FC43217
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573685335.19288.6688939078029089513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7258186e4a0e1bfe631198a3afe0f876dd9d70af60dd025b0e3930d030822b1
Date: Fri, 14 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665736853
