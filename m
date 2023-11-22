Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1991C686
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q06DwWw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80574C433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700693896;
	bh=4qLkRyToVckTgmdqs/eSVb9/2BTN42hqpBYtutDQPKI=;
	h=To:Subject:From:Date:From;
	b=q06DwWw8K7RljpUP52wDGNwIweGBbIt3Bm2u59SAbjbgxd3CHxUqlBNq5qKinfopx
	 09rTSJtuw4Al4WHHi6WwNY1TUgxejGQgjujjLXoROcVf8HTg26VWYZeskzOREpPtx+
	 rsgZ7IkioNsxJdNzdGuNt8dtYiF4GbYDbBw8VFQurBQSfzEsmLYBm9cibTzJHAXEBM
	 snGoPTcTNRNfGQcaBZWPhcafo8GWAfq6ki7KjAxNv9uvkhqtBUP3r09lLE4LeaCDaI
	 MqD3488fbIUZvrq62L1e/QRldKUR7L4rA+5DYDcCIMANFYoSgcQbL5xutrio3zqRNZ
	 RXQ8cCg4PRnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B45C61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170069389640.19027.9593214353511159952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4af5c9fba353978cec7a49cfb7a537cf6d3d506144fbcbc77596dc1aa72143f
Date: Wed, 22 Nov 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700693896
