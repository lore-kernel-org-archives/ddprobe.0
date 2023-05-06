Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4687E
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 04:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB2FC433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 04:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683346685;
	bh=DW0lSCpMNIHCYF56jns/5j/H8uVqmQJXDdGaXinidBc=;
	h=To:Subject:From:Date:From;
	b=ZjYForFualCHstCSfP+Ajq8GHnxv97lnlqS+YtfMhta8FH31mUeks7RPqATXlxCMJ
	 gnYmgV3Ll8rCFb9AcTl7uxEtXs4aPDz9B8LEU5SZqhkH2/QCvCtaWkyktajLuBzBLp
	 kU8IwpNKDRFC/P8IfmW5qDYny8N801CIiSYDRvx6InURJSfLzk5L950YQPpLVE6NqX
	 VovwCE16GbISMmzJ3qYLLm71nyZ3VZ3l4N9fXlq2lzyZZjHk/whyNaTx4Q++EInzpj
	 K5Gavq9pMARVjsub0ushv17ECYja5a7N11q2yBdPZdzSl+pOl1/RsNxRr/qZO6d6wz
	 FPJxy16wU9ENA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF457C7EE21
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 04:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168334668575.14045.2330107988187357371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58303e6a57dc149c1a3588095aaf3e8ee463d0b6e86164b969a1d35f52d08610
Date: Sat, 06 May 2023 04:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683346685
