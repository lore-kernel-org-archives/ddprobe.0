Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0773652F93
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgDbbbIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804D7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703526496;
	bh=sWOnTW+DYjLLOBAyshV0IuAPJsHDrGZ/2gKzFGvApkQ=;
	h=To:Subject:From:Date:From;
	b=KgDbbbIX75gomAgkvI/rk1uS7KVCMnWbDWbzmD5R5XA+J1RYLd0Fr87UhnPN3sFs/
	 o9vXGIR2pKNNn2ixYqs8pipGCeJezLfSzCArIeHr6dpwm6/MxQT/I6UfxrWaIA8wdU
	 YnlDa/hsuHZS+lyvbGw9vboUQqmbi+HuINRIACcd+utnVkQTqNOYgFiAZm2Al1W9I4
	 9G0ZmbhxcxIkinBoZX2aRHvlvbXgmtMJc51bEKVTRdlUwa+M00kiDnX3Mgf33udFmq
	 ++EeFACS6+piJFGIkKZLImjoz40lB0YY60c4Om8xwLeFg8GscjzOPXxwYkR0OENam0
	 ybeGmft6rKvFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F19BC3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170352649638.23123.17927841717623350987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532577e288f95f9b745947473fac59b6835b5a287e9d791dfdfe88d180c16ac5
Date: Mon, 25 Dec 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703526496
