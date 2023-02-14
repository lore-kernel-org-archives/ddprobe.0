Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECF0CBA1
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 23:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0498C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 23:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676419025;
	bh=zP05AS9Q6nf53JQg99oJQkmcz7NQQVf7Nzx+oQsWm7w=;
	h=To:Subject:From:Date:From;
	b=lISLYmOUfz1YuDcDk3S04s7DRDMP5r7A1R9mizWRFNXP5I6iEjseBUzwvWr44gZu1
	 5ub1XxXSTmCwdDAVsbD0w7404U1pFqF0y4A9+A51kZSbwvlklvUUX69zZ9Vi81vM6j
	 YgDu6583EWa0X1KJ12O8Ie0WpDSNthBGh4G8FE+HLBnxLqWNRM8pOJNCUqGNJAhRIl
	 UdESOEimVYEQzU2DvBwslv9Gd80Bq3pMwPgdZVg9+/jemXX4SNBrJhy4Puwn+jdeQz
	 zY9qsKQneCzAmL6lQKjSaRlAkfMTPYE4CTUMJ5nOn/q7WYzXdyDItkNTYS3wZIHNtI
	 L/8wZPc4tjMcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0139C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 23:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167641902577.6275.11397033484797311777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a323c78e84906dba6d9ed0be0d699a8bf4b718a738fff5b0ee5abe6e0adaa5
Date: Tue, 14 Feb 2023 23:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676419025
