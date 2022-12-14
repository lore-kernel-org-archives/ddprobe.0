Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A012F3C
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74995C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671022887;
	bh=IG/RdN6f2OSNrJFxz+8wqiR/cgHr845bFxxkEUz1vIw=;
	h=To:Subject:From:Date:From;
	b=Bsnr0dhFdWLEvYHruBSW9feoOLwJdWA6QpVBPJ+Rz1QBnVp+2tLUsppIFhZEyLlYO
	 Ga8dsA8GdTtiKZhZC85pB7AnleTMKcOB/HsS0d4oTLCjxLzR1RrgNaGgpn68+I8JNp
	 m6J1cOG8P4lyacjUOrK9WgDly1MeWdx9Z2b/5Z5k2nZO4va5pNB6vs3mnEA4ddCEgf
	 79SxPIjOSsPmsnCFWmPvOYrG4GPF4jAns5+bs7LIz5DDgtmmhAg53BgoJAlr4cvS4W
	 5ChkjFERnxxdH54aROHtZ0s88bUJLaWMcVhLDHAJTvoMz/3izHFp2tbtfeuc58Uy11
	 /5Tn1MEHcF+VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D549C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102288737.21667.13637846023852038860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa928932495d45f51dd3790fecc03b8b36fe063bdb0b4d4b9a6f3c9b35a6426
Date: Wed, 14 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671022887
