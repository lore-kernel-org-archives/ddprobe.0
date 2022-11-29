Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1818F55
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E7A9C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669732854;
	bh=uRS6aYrRX7mUKdOuR9WBwfSmByuPDN5Rac8k+2Muqo0=;
	h=To:Subject:From:Date:From;
	b=QcWlbW02KGUR0L929WXSsu8TJJQ7prXud7uE6Glr6ib2buRpYmumC+/u27TEFnkNk
	 koLjzJtwKa7E8epsUaQkPC1H+34F+GgQ9ciQX3cI8OBvsa31UVBbPFd8CAI9cqmb7x
	 xdpLJmhRZHPhuX86SMAal+VQjGZIKRiyeIcGZZgTHZ3KD1BHEQDcgKYd6p9ZtYu+nb
	 AKX3q3P8MmUpTO7pPfpu6bq5mk40UgkwR8c9tK6U3woSK5+7Eryz6PqEIEXQY1zQCC
	 abxXxn1cpAou9vDuHsdCfEZikuMGM/VJaOHnTxBd3k5jyVJko+bzf/QQ8BtE6UgL8H
	 7mNScI76LCgQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5706BC4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166973285434.5527.7238090146767446497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b8c16a89d7d1557764d4834aa729ff90a7c8fe3fb0c5f4d657c942d9ed9440
Date: Tue, 29 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669732854
