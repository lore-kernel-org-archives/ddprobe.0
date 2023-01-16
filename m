Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FCD1363
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F5AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673855487;
	bh=bwv0g2SNXELZCc7Ljoud6ULsrOCRrwrTsRIx6dOfrNE=;
	h=To:Subject:From:Date:From;
	b=eBHSK+l/kaGIn+0EWs7jp1uQLNYn0y12k+jUjUKiutru3UB/f25pgjXQ/mFQRkYSE
	 EdIzORYpOmyQ8mkBrARxigQo8UKuKvEH7TtlIC8JFbEV367S3ZKNlIhe+2/VDgz01N
	 sKAt5sBsZ+Ml/mn+XymVwNr8sarLcZXPhyzvFR/z5O0+LhBPQiIJFdkaob3Mn7sIsa
	 d1SdrKJUTORirTx7hQ3db82ZsrTh8xT116A6JQC8x7TC9WpSSTN9AVU5cB7e90fO75
	 T21L6KMuXti/S7dMXI7wiZuSEGGT4MrYv8dJi4AUyXgyYLPQOT7JwijWBck/1Xgf4f
	 H2NKyXfdhoRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650C0C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167385548740.29706.197762081448757962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3eea9cde827698a4c8bc7c5ba62c0965eccd6187d6ad0de30b1a4ecac0b69a
Date: Mon, 16 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673855487
