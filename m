Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482B5101D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DB2C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688118188;
	bh=ncbBoutMvxZ0tUDASZqSqv2HxrHj94nVV7qUxL1oBnU=;
	h=To:Subject:From:Date:From;
	b=KUIcLKB0Qh2GQqg1hhhsJPyeTyBRtQ+bsQxYQ1cWV7mzxyxDhfIU2/RRLEH3brdHH
	 smFdGjdskc7LkWaTQcQRYJC7ftMayYCsch5syn6kLXU/ZEpI2Jt+kO4om4o8Jt26QE
	 OjMDS9fw8nYPaW4roP32otZiLwKVnC/3uZUznOastZ0TfhTd3nKgLjIPE8+pC0yLyb
	 tR4oP5uLqLkKKFaa1nb0jCtEqqeOqxsgYmtCzdRK6kWUc+SmhJxu1HquWMHOzmfPfM
	 rF6QTRt+bvA4uCE6zc2i7dZKn7Q+8FHKTkr1qvE63nc0nAiBbMu+24rZGfhlUDDumH
	 vYwl10pBdqlOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA440EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168811818869.2779.17590500816623576415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe40e312eefeaad8d96553555f48e90ddf554e3769c72f84860493766e4cc7c6
Date: Fri, 30 Jun 2023 09:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688118188
