Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12BA18EB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bc/qWBSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A017C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705406896;
	bh=BlrmcglWvcRIF2GFtgpyIOCozY/Kdgnu761PA+7uJVs=;
	h=To:Subject:From:Date:From;
	b=Bc/qWBSPRxqiBs4P+J+wHSv3ecRn/6JVjKZ733oW+zy9cVHdaldik16kJ/95fcxaH
	 imH8THg7K5PA4QEZSKN5wBkeCGYFWJij0dW9bAC3Uzbi0NEyhW+F4DaS7dgAaDhPvN
	 zEw+FQGQ4uPPY9iy3x/7UIXIelphxNFYtDiEcI0pSMy8lvs7JI5KSH6Sp8KhAfPAcj
	 efX2txwg+rBajU6mvv0iigQwd2MuPlR0U5Kut2+4558UwPN5VDHSc5DkmrEGoekZKN
	 PaORPSYTQydXYdMUkSPbeSTXgt8IHPTkqsikBF9es41mTwWypQaAjWduEImbYwP1oS
	 D9sJ9ZpcSGj6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA98C4706C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170540689637.31693.10727416067275951543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33caed052d9b6cfff1069492af14d5d5d3674ca994dd669e2e9d61047df7fa1c
Date: Tue, 16 Jan 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705406896
