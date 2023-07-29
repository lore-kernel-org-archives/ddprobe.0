Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529401C06
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 07:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C766AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 07:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690615328;
	bh=cfDx3itd0S8CkFlqAyZW8tjyJ/Nls5jecyD8VHDNyYk=;
	h=To:Subject:From:Date:From;
	b=fXvPE3F3eJIuq1KWGyA5/EJLnaHvl6iklNrDk/9WJJFdtXoXaTE40GDnAgTXF1PGe
	 K5XFqm5mMzRlqO4nvWeBEeK+TK8/n2SI6mK3mgy1ULB3yMVw/kqzuvfLhRPaTz9+nt
	 w0t75skj7EkC0F4L3Rq2I2o/poaKh4uVjR5oMZjZYWmuVNFUSjiJWKyMkfCDkoDq2m
	 j/Lj2CRFZ4dpzbzo4bo17yBO8YpSwhjID1MP0l6e2te7wEDXW4x3lIITixdBouymdM
	 12LOT1yr4YCZrIbgi7qtxoTJtjH0IdWSJIG1PamJe3w9qzMDsLdurgBNyPNuqhKuy4
	 sYwh8v4YjTicg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96B2C0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 07:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169061532868.3177.13822226549552279272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453a5377fc2a4f9ac10225747c64bb682d0faa34ea5c2faf4a76028cfdd0cafe
Date: Sat, 29 Jul 2023 07:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690615328
