Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB208EB35
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730A5C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670238654;
	bh=7z1PzHWL2awwVfN6kGd1EW72kzjjOP2OjRcE4p9TnuM=;
	h=To:Subject:From:Date:From;
	b=leKm5t2nFqWSZ/PnKnp0O9QscMGRdP93TxBWKM6HYJbAX6GXj0052+38zECdyc2uu
	 +O07t7n+uPc1xC9yJvY4za086lK7Vk/EhNiNyRvGmVzu5ud0oEUBHX1og3OCDaWcdQ
	 9YQCfAdPMuX6q6kWyMSraFoy/CeNiF2hy4Jlnafyvr5cJDSMI2Z/BbqBASXaOdJ6Gd
	 wYJt2DP2oTngKIAKXLHd3exQLTFd1HmOr5fkPQJOKoUtvBY6eSjP+7K1mcXaLwwl4S
	 IuOEf7IivSbbmTFhyShyU/X8Le8tg2j7KXI0RmI8X/r4jYjEp9iC6h4lzkgOwk4zuQ
	 HDc3Z2ROfh24g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56089C4708C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023865434.16024.1786698163319705963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5866ea3af1d64ce9b1f436a968812931b17a6807b03706175c574ade04628a45
Date: Mon, 05 Dec 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670238654
