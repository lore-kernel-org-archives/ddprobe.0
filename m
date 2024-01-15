Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FC81374
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzkOy1tN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E60C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705280296;
	bh=O/7kcb85MUDyb1g0gLbmBlIg4Jx0ET4+g/9jIFzc9yE=;
	h=To:Subject:From:Date:From;
	b=NzkOy1tN21p7+V7OHxhMtjvXA0PpnNzXQxjE8Glvq2UQTaaNgwK6YAi0eVxABK7td
	 3wUB8et+70VE+HVb9lkJwUmavkpzHkYSsxNGxqJjwx+m8WXXI83//EfOW5clo2I1zG
	 /068eWyoA6g2ZBHq9NSuQZrhna4hIL/XlqteBdN0/8aYHWFo19JDrFzRDhBCGLKNRq
	 Jr3BdiG2TmBRuQ3CdUTk2VivGVIZYsm4a7kfTj3iCLkUh8M1fC02vHv3BIDnHHLw4K
	 sBdY5xRVF97mTGZgMHQ/CUa1v4k2rjR0XxJq0zWWnXlpNaLgCw/5a+P3p6Y+o2MziA
	 nqXHbeExGvtGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656A9C47077
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170528029637.31031.2401836786116754192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc36f49751aa107709386fe58969aa5977bb4dcbe4cd17e730f0de4ec17b932
Date: Mon, 15 Jan 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705280296
