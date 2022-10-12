Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA2B17E0
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 858D8C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665586253;
	bh=EX3nKq4YPonT+FTyK1MBVprjhnPEb8o9iRMvjVzkCt0=;
	h=To:Subject:From:Date:From;
	b=ryTPHaZZhddfz253GXr03WHw9N8nZYxRXgBhLuzPwwpP8CP4IGzoB0i34Ovf8XaRl
	 yFGrtwdnlhFzRPqUZrEgmQ0xsyl6prcKSA9PoFQpbTtsSToCh6t4lrB3hmx542N9yp
	 ZkCvQecNF8KLVa15WzrlKOFg23xLeRZgDfzJKoi6hwTk8wBl81T2tnSq4AxCgSuUJy
	 5ZBt7UrZ4G13dRXkTx7Z3JJlWkbKGPahr1RdIsiyHIW09co3BgHM8UwQcVi6v1e4zw
	 VqidmmWOkjGtvQjOOqEV17mUB0Rv5K+4WCaxOcymF5ePo9rZ07MAMtoVJrwlfUSi3c
	 a9TAfTPXdeoDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6800CC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558625340.28259.6126261900704384656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e51da87c2f3ed13d7a7038680151cadf4440c5440d5a69c9302b7d14210307
Date: Wed, 12 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665586253
