Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7C84A3B
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 14:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E61C4C4339B
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 14:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676989745;
	bh=lGDb/ON9zWWj3WDlnSagM38RtkayS84z1h7KaDu8TMg=;
	h=To:Subject:From:Date:From;
	b=IAZdcDO0z1Q1zGuuVxjJWpA06Ro/8MLREIOCH57wKBqLjYhCb+VNKRhmq/zXohGuO
	 a53xB36AQxHItfNe+OH5oLUFfYo/RXoJouBOvDwqYpfCmlUk3pwbXl7pTbENhik+oe
	 C5h0wT71tRvogJDStKtHMMptdCprK7PdedlvxmzTUaiVBU+zcIHRMI3lTtFaT36qBR
	 iMJIg23YuPrLO4PII1WBSyYPPa8HWt2BJhevMXYEzv57nAVbNU4ECzJHgQVX7vP5MW
	 mHJnzZG538ScKECmKWF74otCRxoxsDrvTx4itrO/DBAFEGvebpfLnK+eIIX85oUMvy
	 QgvQYEwTbYYkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E35C61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 14:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167698974578.20951.6395020617381609945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4995ceb59db4d1621f03da98b6e54ef0c570749e6295dcc5dcd8e33c0d17726e
Date: Tue, 21 Feb 2023 14:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676989745
