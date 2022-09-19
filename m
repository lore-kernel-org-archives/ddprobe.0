Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE905A48
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B72C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663573853;
	bh=XhCxpF1fxGa7fGT7OtWl8IaQDxt91f0HJTuyw8Spy4Y=;
	h=To:Subject:From:Date:From;
	b=L36vtKiQD4HDlrKt9032oTGeJBllKiQDernPD4or+JN7soIFuKzby6E5r1v76cwvE
	 Vn7kmvFONR6BXckc8ht/zSy9lEfd8BLUyrfNebz627bof8M1AbZVqquBp0oRn8KX15
	 E0sFFJaFaOqtR6ryqlJaUgHvbLgqckM3gCegbLe5KnuqfaBWn8pU/yZumJzLRQw0pL
	 NUlx3SLgX7ZmGC+yN1PDdw2aOyKjilM5ZUiC8YhRW0o3+RJ5LT61ho38NlWs+mCfcK
	 XmYIr8LHegJYBMBehE2SYN+/Me9+XTeMoJxiSjXTR574xA9o3FxnebjQ3sSmIgsHrJ
	 D7ZT5EMw7U3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F405C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166357385331.32587.14302375748744371209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e0b218ac2bf06c55577457437fda0067f0d234828f6ec1a74f335cc4f1efcf
Date: Mon, 19 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663573853
