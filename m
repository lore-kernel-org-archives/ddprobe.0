Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDD123CD
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 668BEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667121054;
	bh=0YEiBJ0H4yKmNfrQf9q0WBdsRkaha47PByslcgWeTH4=;
	h=To:Subject:From:Date:From;
	b=tHkRirdf4BRD4aqs1akeWNA6TtGz593ZvA2iWiR+Ij3VU0CeCKS/6Wz3zoRSByjys
	 uB/3WEhj0ZyA7Oo3TaBmrrf6L5yzvzbsh6bo9wUJTW0YHt5aibWQ3/i6UFL2dsfGH5
	 GkJsTakVYQqtONVgbSgmxbaildJtaOsiHJ62CMXmXOWeCtXeFjWn090r15TXh4qzrq
	 OO/Yl5gnwNiQOWyDgkd4XZWJOeR3JTXzav/Hs6R+65JiwbGWBr6FfzAw3YXsh2ZdBW
	 oaFEWtRbSBBL8iZ/xaQgQc4Ui7E35HiQb7274zA5VxzpVMSWfUGGbdUOWSUMg2bQJx
	 Zr5/Kw6iH+pHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517BFFA373D
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166712105432.27433.17800883064412581600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c68924cbd7b0cbf175f0dad79ee6817b782699ace9aad084abe57df5ad722f
Date: Sun, 30 Oct 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667121054
