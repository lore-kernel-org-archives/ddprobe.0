Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1D1158859
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718824163; cv=none; b=N8Gb/34PcEhax3qhptipGQfXY+MlM3y4sT+g2HPmanJKjfhHm2oDaq8w4Z+lhxh/djegJ9jjw2/Yt6HF1pCK7fBW7oBhrtzJYDhjOqDlnhoBK+jsDe9GZinxTOobMKWn5zAD74r5VSk/BtVGLNchjEaLhU3V4k5XLLxjSyP4i4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718824163; c=relaxed/simple;
	bh=ZxmV+IdHIHYNeSpWr5M/gaNsJyQmKt0E/l/IdwgKV8A=;
	h=To:Subject:From:Message-Id:Date; b=V5HbX3lOnotewSX3sCYB0TtCFuz/SriW1Fia1oNXIlmgXIivUbbBzd7/WxKPjmqpFnVqLLmxPnOUrw7rlDyXRZKGc6VWAyJye/ASoPCRb+DXnINpf9e9i1VpBe9aMSg+OLV+5BXwR6kbtXDE8CdGQnLJH9oDKQuyM83GUfnfpiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCU8fmQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCU8fmQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F39D1C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718824163;
	bh=ZxmV+IdHIHYNeSpWr5M/gaNsJyQmKt0E/l/IdwgKV8A=;
	h=To:Subject:From:Date:From;
	b=RCU8fmQrZQkrrdl1xXSmxMYw5Rj/A0NydAa06KZiSMqT0oZsSluJ5e1OymIyxxhm4
	 gySgBYNmnVt3DJV2Xn0cD54MfespUZsO5irm4FtbkVP7vpmbcjKjvyCLRSyVUuMs0X
	 N7X3lMyiyswevL8Ft2qMEJAZOQ7NueDBDFpYe7g63SHChF9vhTwZ2n9411EVKP35gQ
	 /eSmfF2eGU0k5nysYGuUVUyeqHsV/bIeMbD85aitnZrXqbopzPVyyvzCw6vy+S9rYX
	 9rUsX3odIpK+BF88QbWloCFhqGeQwWyoUhEhgMFcaVzbJcTjhQKRQ1fSyZrw6ziSQa
	 W2QNrlKCOLjUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D10E9C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 19:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882416283.31925.10722803120114486802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd47d18c0ffe0e612283f8620dfcc6a21a380b696acaf390ab674375dce7de1e
Date: Wed, 19 Jun 2024 19:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718824162
