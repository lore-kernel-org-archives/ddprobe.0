Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0641CCCC
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 18:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB636C433C9
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 18:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691865788;
	bh=EmysD4mux+vIoQGgxuirMeoqzNjHJ8Vsi+l8AKw3vk0=;
	h=To:Subject:From:Date:From;
	b=Uky0vEkSKRSu7jrg+3W2TDYIbSQXoF3Kqh7lA/5r045Y+uXOPC6xKQkZKHzL9oQR3
	 gGHNDd3IwuOQ0CsBqgokNoUIuYTS+E3XiJjOhBaBJ74XlHRLVPzil6mKCWl/Nbqrpf
	 H/N1UY8XW2sOc1a+0ijSOQiC7lio/Os0QeCJcpO343BsBVvA4zUgP/93zbU1FHkqX8
	 AYb6LmQ6Xvx1PBGWPCQrXpEAY+bXytfKvjyjZn7KyMemuN+YVg7TUqLSXbfCQXDH9n
	 ZlLEf0tIVOx8/GdDExQxGkYDmjH+j4CUZlzZFS8ZF7cBmRXTGxFyGKj9H+Bj3ecpNh
	 s+sqdO36ZLU7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45A8C001B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 18:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169186578866.11720.9490285526240590126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c235559c8eff3a5c7dbb0ad36d4b9d6fc27bcd4c2bd23d964e623c41c6b3f664
Date: Sat, 12 Aug 2023 18:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691865788
