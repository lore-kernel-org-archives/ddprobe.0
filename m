Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B6217CD
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 02:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6566C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 02:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695175508;
	bh=7JsjPyQ/5lG6PYWlxYuUQZlS4OR2COOqR7aqbmtXAXA=;
	h=To:Subject:From:Date:From;
	b=KygGtPKcJ3LY4hrqlBa78dBlJqMhxSZNaEKyWnJg0MUNvUpXYiooMud5FMbJpOyU4
	 A12pOmCStgQwKgmTs3ay+HceIHZwekVVtpVXXK3HIeuHz8BM8PjNUmFXC5Oq4qiAao
	 ZJurflZ3FdO012Hs1OIUYVr6/x+mQ7K/g7bmVxh3RJKuiy1QMuLpNfvS76kcNThgcL
	 H9Q6c7q9ZREyzfehNa18KSjzrvxhJf1pTN8YHOdSFtJdLNtOlNr+zU7k4eV1sQ7jxL
	 tQWb1WJnfuzqpQoovcFutV9b63595M9MtOMaIhCPisVIfNGARqxBd4rT26li99PUjB
	 GOHML04WbOnDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A844CCE79A9
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 02:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169517550867.2221.10829017921694015289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe9ffef3b61892e0c7e76e7914c3c18452f085bdac038577df328f73ee8b433
Date: Wed, 20 Sep 2023 02:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695175508
