Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7D7624
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 10:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BDCDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 10:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684580346;
	bh=MoH2OZmNF+C8moyms/QX2v6KrLIFLoPOur5eyFZnQdw=;
	h=To:Subject:From:Date:From;
	b=lv4kDJvLiTpYe3Qq7F4aJ8nMBYM4ytqkSttRBk7xUbFQz6gF6uSKodvK1rp1T+Zk7
	 JyOWQ+tJkhlHvuWJZTYPxHFWQri79rLH8Wcbmq1lcr7VYMk9pBbuQ0jSAit7GCAi5I
	 iuPyf1pBSa91chhOulBKRRrl9Qyi1jvOkjOewe4KvjPtz4E0m5aVCd4sKCbxeu6WP8
	 hWCCtFbt4+WP+r0GwHjI4/9sgkGvCQQoD98cucF9APCys3WB2SA3niJHsNthLvY1Fy
	 Y52vXitFs5avbJF4toTFxAbMPUft0j54g0iVG+A36oHNjyzXrZzeHx4whoWQAjz4gb
	 AT1g2u6lfwt/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF9A2C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 10:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168458034589.31076.16086968446768779750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab44b570d8ba636e480c7af796b1b10c81e8311ef597f6d4fd437bb0c1ca089e
Date: Sat, 20 May 2023 10:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684580345
