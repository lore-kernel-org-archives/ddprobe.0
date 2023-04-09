Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56473C2DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 06:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E311BC433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 06:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681021265;
	bh=aKawejsaBhn3TxDBkBuInf7qpkw2TAFLpX5D2n4aHFo=;
	h=To:Subject:From:Date:From;
	b=T/ttgOpb1a9iVLSrzA0JGxQUmFjsmb5Y3oAO2CrESBPlkY2pdph977awcDZ0ECFdf
	 rq06HGtLZUqQ05jJBPSOWXRcdONuKP6GwwC4yJkjJ88YamJ9uPacDpiCN7crTafTxz
	 s7h+VC08xAeU2ZTSF4f3FYijU1ST4EbuVU+qXRFFslY33KWfqRXKsLiMfieQBCXfkq
	 hAxJgXxJG+BuyYMVnUA1XuteCAJ9GvI8yb0frzUtzjEr0N5JvIUA0t2tE17fpREHDl
	 yj4ZEft15Jhu6ad3HtVXE4iOxnZw7PrPa3nU8HAG6wqLdresqkfzbI6tLp5Ic6MECu
	 z7LSPmKPC22YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BA8C761A6
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 06:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168102126576.28441.12810403041685001259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891e93c2e4897b36a8cf6ba10f6f1b94c8175afd3a17ef6a7a2e4513a8d70815
Date: Sun, 09 Apr 2023 06:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681021265
