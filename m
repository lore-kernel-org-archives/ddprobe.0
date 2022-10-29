Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24AA23C0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702FFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667034654;
	bh=bGCckqO28wwG8bzV9SqvgZ7O+mxwHc3QP/3T1Qblbj0=;
	h=To:Subject:From:Date:From;
	b=Daf6cjN7qHQKO6rGFQ+8DKpt4s3S4KIHhc3v7xGHxzC/iLf5lbH4I5O802sKKBKiy
	 b9Oh+nQibMQQxaIa9t1SbHqidm8nH+ABY9GO+1hgE/jinL0cQWiZdsOMNlr4L+n57y
	 bh1VDIjS4mCi70tcmGjJNXcwW9YuHcB/IGy9sCkJz0kNLbNgNajZAy/cCeCfOnUBbh
	 tPZ2BEENGaa4pnIUDfzNtpJsA1RWuJdW4aTTSXlK93sIkRF+P5GTs+hiRHa2AfaPoB
	 TW+Yw1NVPspfOpKXq0SvfbKWws5IlHCqrCaG5XZn5DBXmAVm70a7cE2sYDvdJmgA4K
	 p8RjPQKpBYsMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BC7C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703465433.28269.8569529387695338582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9180c8bf891ff8e2d96efe5d7e339b4dc88752566ef37f0ee8aa20240c439cab
Date: Sat, 29 Oct 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667034654
