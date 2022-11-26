Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0CD23D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1A4C433D7
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669485054;
	bh=zQPWQgkJhpVHSmc6Vy7yjy2wthG87LKNMxxQjVDoH+k=;
	h=To:Subject:From:Date:From;
	b=fwKwiWXc0Jh9KvmXte2EzhHJoiLRQrFy5Y6ywaqgNhc+VDWGLSLjUy0jgLouEzj7u
	 m0hH0gQe9N53a3QYp0TxIJqiOOasEBbyO9HsqtADcQKTdqH6+POzF0mMHuEkl9+0Ty
	 Tojnfg3U/6/oDnZNJbV8BJ7QYzWqQFmW93pYO5yDoyfXPtokJGcffcOdmOYUKjiJ9q
	 eM7WY3mVVQ2qdx9yr4Db7bXTmtvt7DgxCID9S+clOkKFQX51Qb3HaYnmFOhS9f+Kyw
	 E50+7dG3Zw6Q2iaKQl87i3qjhy5BdwVTBLLBu471OezXS2kBfuH3bNpRYvXxwxsrI1
	 brTQC8+mtcvJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5767AC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948505435.15123.3748619033425456990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4daf23d49e7a3e1d5b5a7cb5a9adc443514ce806a9a489f6cb80f46822680fb7
Date: Sat, 26 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669485054
