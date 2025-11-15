Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DC126F28F
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763250054; cv=none; b=FmxyIn0Vs9stbcRvuuHC0GsrprgbOe/Ck9svR7NNInMgZZIAEuVKdtoOVlow3f77IcB2XbUuco7olZ57dYLx98WWPSAMmfoIm5LMqDX32HxWpe7jIYdDbor3JOcEtMbNgB2bMx/+0DwzFt7and6iU8njE+nwLo1vBxCHqf6xC4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763250054; c=relaxed/simple;
	bh=hKbWA/FqNAzZKGRj+uAoq9Stv9GoDeRHr6UG5puPABI=;
	h=To:Subject:From:Message-Id:Date; b=FaebhXdhnlpByyGCnP/dMO5xqRlws9pET7P83TuOzvWdVA1Tg+IXTXsh/QkB/I96pJCNP6+UQH1bzvgo/LJoUoCh+sKO3OpT1MnZL/dx+w+JcTUmumEAjvUkyZ1qV+HqdXBIin/T9c75QjoNmvTbrnXI/WT0UCkGh16jvI6NV14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eG6hME5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eG6hME5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A956FC4AF1B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763250053;
	bh=hKbWA/FqNAzZKGRj+uAoq9Stv9GoDeRHr6UG5puPABI=;
	h=To:Subject:From:Date:From;
	b=eG6hME5r+cY8Ct/QM0b85WiNQDtmlGr/zUpdms7HYw9aCKO8Ng3gS8b5DBe/artuv
	 TYbnwoH4pDMl3ysMOV1qO82/WShBiJf7BdzM0bHt+FCkQ4MdSkDc2VLp52plsP7MTC
	 IKc4t8FLMHyvYtwuZKZAr4hAJEVJ+BqrjXABuzrFSCU0Wg5+6vtZX31ROwpbaAmlDe
	 Ymh8Ce1xNKxGxKPulIWbGK7qSYHaMVtR0hI/NIhYoR28au5LjFNOyP3nfJCD7mKq4t
	 H8vtCUt9/ufnyt77e4eQ09LdgAjWgA50bkRDHSn/Qh/9vlVpGE4zS/bIE6/tlG4HdI
	 cqzQLqVq/98GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E26CEBF86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325005358.24295.5506937497414433410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ac66c3dbd0c67f8e2ec7508ab1cf3111671f0c986c61938d48e59e1ec2ceff
Date: Sat, 15 Nov 2025 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763250053
