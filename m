Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B12C153
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHO5gClA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 780B6C433C9
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700617696;
	bh=IezaaqQYCPU+Y3FyUuv0FUGiCR3XYiyCY9J9GJSrxkY=;
	h=To:Subject:From:Date:From;
	b=XHO5gClAF/5bkOQfITobuUB9BIZXWBGGGB+MqhxXU6CWjUd9jlw9Z3KSJ9qGSMIwG
	 TufULLR02jE2wQHj48jui7yp724SUH6cypvfvzWT9s65cv1ebBOGFG3BALChWXcA8c
	 NyfNlkvSNugmwNQD+Sp5Mz1V74uvH1irCQvkiIaMy5SbEhPMuCGiAn15bd3ZfSyn30
	 +0XpuX59nq6uiRqTlQzY9VpEV1lAnAcr8nMZteR5mlFkLmmtRzcZn7XujNqikhCcFk
	 sRhIi/CVMzAF6YNxqXjxrJNGQb31gu/O+vwYnhpoZbAsrcGoyn+xoo4HXuafufz0a0
	 Ezt9h+fok/FeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F74DC61D85
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170061769638.30383.3501266627920896647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45472269b6cb24738c7dddf46031d43f2490fe6ff78926258a4149d81a59c0e
Date: Wed, 22 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700617696
