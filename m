Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1944175809
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729715754; cv=none; b=j+3sCGg1x9J9oljQDu/eDrAhquLbnOqGS+worEoPAJCNPf4YZ9g6Zu9rBl5tSq3JlqHWgpwAoQMgmA5TrKrdto9irrJLfDrkQZ1uG4bfYFQEPLsAfsMPGRodoR1iFVx4D4IGpRBAvyZAeujPY96PaXESMkgt44xyL8kk/kaxMic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729715754; c=relaxed/simple;
	bh=EEMmwyfFqYbwz3Ww6GBSivaQp0siygz+uL2LZ3E+S/8=;
	h=To:Subject:From:Message-Id:Date; b=DA5jeEWXEihsstLOR/0Q4EuGCOq5m1f6jSiZVJFipmU6D/rMuO9urOuJjRQ2qmzkQC1+jysPM/kDrw0iWkhceAxHiNZ8ycb2NDf3VvI1AWWTXkdQINmBb/dvTI5nEc1U7BNuMLMNkeHWqqQq/Uxh3j0grXgk2QqjurPCgs7Kc7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdREkxwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdREkxwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1265C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729715753;
	bh=EEMmwyfFqYbwz3Ww6GBSivaQp0siygz+uL2LZ3E+S/8=;
	h=To:Subject:From:Date:From;
	b=SdREkxwOyqPTdquY6xy9Q9BCzuYR2CoKMptJhFXDaVnWE/lTWrMjeSjVOMgei0pcD
	 Nq4+xfPTO6/bCRcw486WdvxyVuREdF7qXQdp6rlT6wYlKoODHnsoNCB8O4i+1QbXgy
	 qqJ3SdG83WiKQx96TXxZZ8EwNpHSc4F1jbsclz47ywMsA6GQJ/0fvf4E40Rt2m/5vu
	 vG/YTLTvvUR7wYba6CWXiZ3L0pZ8z1+lMCB2IJJpSgoMWObAp4YCYq3J4sCFVeTi0I
	 kW+/p32/aYNFqGuuQvStVKQ0X8/9rc+5cd3UkoSeENgu8hdfaG9f8V6C3W2EayIOfb
	 QRZzpkWBpkuUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA03CFA467
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172971575363.6495.2128283724319415683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31926403dffcd037c229074033e9baf3718ea02d2c8570762e05b24c57dc3f94
Date: Wed, 23 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729715753
