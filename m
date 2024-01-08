Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DED22575A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBKhXwfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92FBFC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704715096;
	bh=6dwhZfOJ7PFaJKV5FV0Ya46yziY2FNt8TzsXPS9xXbk=;
	h=To:Subject:From:Date:From;
	b=JBKhXwfOqAcc0PdOtGuL52znQfIEagPFyL+O7wh2C5rwAvTQq7Xy1eqi5473xRAu/
	 AJwR9rsi0K23khiAHkZIry6c78DyfS7M4dwiz/zA1A6IbklquiFyB44ubVX7weQnRE
	 lqeoRsfHs/FUpC4N/+qqmd/jUeYHa1f4mkzFTQ0zYPZ51ScLwif8Mnhrt4eGpUGjKF
	 ygjEFdeg5P7qsiorH3J3VYOoQciJJM4jgLT3mU2AhelFNCEjBZlADe4cYiAIMZnMyS
	 eGBmx0//EImVmJHwS6YOUtS9Y4LrslhzlBKadw38XPgUXIODJnJi4rno5IY7epmcq+
	 +KLRcpxRhCvIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73945C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170471509646.25476.17620308959251106202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc1fc1fdb7ec07e970a6a2be6745f4ef04a848cd7414083a46b943f26d717c9
Date: Mon, 08 Jan 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704715096
