Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C308BE7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDFXuXzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9156BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698396496;
	bh=zNqLV6CgNM/PSjSbjQcqoYzGwBRTfXoum4vxvSWlxAE=;
	h=To:Subject:From:Date:From;
	b=XDFXuXzqIqkxgENEl/df8k72OJ/sV59SvjPd/PlCfl/4vjdaZYBer7BQ24MCVfox2
	 DAz0uYVdd8pzURUWlX3EgYw1bXsXOOJswTqY0I52A/1swDXmAzng/ZEgATxCXD5vGe
	 fmZNdfofSavu5EEirAivyxXSE1jeV7xmPRa8HgNvqsrTqNPWxZlZIB2NPmdnN689Eo
	 sqndkFhy85FnOcd+Rstsj13bPR3eF1vHnRV3F9XCxEWZgcdlWZ+BSb+qz7NJogLCM+
	 5buC8PKKd86fJdMAMKqPBsfb7GVkB7rOUJU9xhDD0Efnw0Fd0tna6bcKBTswrJLpDZ
	 kfq2GKHy229OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE04C25B67
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169839649643.10410.5321951201770194107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b740a59327cf190ec42a42e126134414ef117af4453d4a7a46b2e24b153972d
Date: Fri, 27 Oct 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698396496
