Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EADF33CF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 21:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBABC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 21:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677359105;
	bh=ODJwV99KsvxMfroHV4nLhwHZjeFwhtKDy71jplp0GJg=;
	h=To:Subject:From:Date:From;
	b=YazThBc+TD/QEBxFTpqmQU6FoXrOSSHqZkOM3swM0jTPeiPEzX/B4yXD4GRzMpQNu
	 kS1d2xFMJqYpHATCh3TRTMha8g7wtK6TXO7UpO3B+FrPieTXr+D8euLRtG+t4LIJGa
	 j8MZ2CsQ3FOOf+qa14mRTaLMozDoRnbuyh7hp19cDcRddz2BlVci02pOcbPsYs4FiQ
	 pDNfVvfuCxBH6nSkKcP4MyKFoHEEsCcnO+EQcvY7bvGhwk2Q151JkfGbtdBDlmueWG
	 NxSgxTNNA1TfXBCahN4SPc75uJOupgxj7V8i8vXkbRBM7UEEeIkVeWNkxRTgDYKRpV
	 5J3QJCYJ9YLsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB3EC7EE23
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 21:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167735910576.23374.2418114507837207874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599515cce046d0a165103cd596b885abedb9ae19a388677b3acad7a6b0b7cb6f
Date: Sat, 25 Feb 2023 21:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677359105
