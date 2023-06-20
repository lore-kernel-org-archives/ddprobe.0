Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84802168CA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00F94C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687273329;
	bh=wwq81GLmiESLNHyvfj48ckcoULdUQzLE1MPBV1lvRTQ=;
	h=To:Subject:From:Date:From;
	b=LQsHuqFY7Nqu3yXL3WwkGZZOdq2QDsw2Ghb8+I4ulL5h93ec5Gr+NhTFfsZGh/duH
	 a/riJGgEsS+U/AA3ssOiqjY0CwSdGN1gdAa7rJGjrCna1uPmjoPUDU1klir9uQ7JMd
	 EWYzZiQwfxyUojIqe3bThPzndpJigO0dxl5sk/T9B5ZS9YF+6t37ersE3RrPPGQw6S
	 ytpPafarNYSK/cABalenG1kIZpHxT5r9RrBJHJEHnUJBYt1TauR1r460z5pwKo3CVO
	 pBBBW12bmDmBzlnvZTctg7U3AGnOkYg9YFvkZNNNH1Hn65dYm+U5RnonLcVWsHjAia
	 +e8LvIPciQjZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3D6EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727332881.5776.12081138624733446323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba082867ec44f43bcfaf7e15ffff03d8984779d837562070c03e5e3fcc3c531
Date: Tue, 20 Jun 2023 15:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687273328
