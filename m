Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701DF7E
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 01:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8059C433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 01:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691890388;
	bh=4t45P7/j0pWCb0Olq0EbeKMHN8c/2llAheBtDznU/B0=;
	h=To:Subject:From:Date:From;
	b=A8eYznciFzqFcMRne+ZCKVDpvQq+aaWQvsABa6RGyeX5sQdXWOAXDuzFcUw9AcQpx
	 QR4TFxvLR3Xqfc8TaN0hK4nWc6qDxPS9VdikXhMRucwr6/3mFKVDTORJovLYUi/+BZ
	 euN65EhBkig0XpuusFBUk/Tj8qHbizZk6ywHRotABa3QsUaZaicGhHSgKw5MRHSDjP
	 eNKFr0A1aw5ACt5p6d62DlgsfIv8ZgAqe74L7J09UGyt2SNPkhqk6GzVUHy/md9ZOq
	 f5WefAMtCooxAKNQLX7ebFf2QFU69z+v0i0pE8ya8guPwGbW62Ig+x5xYWtCN+nzsm
	 L6/z0B7oZdWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6F4C001B0
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 01:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169189038867.29903.819599119278491874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292c87c12568447637617228384e3140b3564bc2b07a7bd505adbbacd4b3abbc
Date: Sun, 13 Aug 2023 01:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691890388
