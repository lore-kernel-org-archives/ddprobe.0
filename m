Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FC07081E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775349334; cv=none; b=ToeDRALxfYlalv43v9TSNwPNitvMPNzgU3150vLrWfTyemcOYWTY8FKLAQNbS21QQ7KLQQqPEO6MmWatiRK/BUXNLXlsnaew/bT99iDoN5l93URztfmCDkMOTjZRKC2TSjO1PU6y5+8mxHBGEHv9h1BdbnIybnK0mOo/zIeOOSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775349334; c=relaxed/simple;
	bh=veH5IzZnN8aKz+QPyEn2TSgm2Qym5jkCjIeAhC6MLeA=;
	h=To:Subject:From:Message-Id:Date; b=S8ZdVE2asu1E/e7d+CI9XOhfNAKIL2RXonHXaJqO5jsrkf+gaBmsEnk6T7WK9M69tKZ/g4f7+tf/ASXFR+o5PqicPchfXNXu5cz/4ZRRnSyAo/K4gbPnciYUdkYHRxH96gjQtKjZ0vVzQaRjeOdFXS8RT9aJPdqamT0hFRlKDFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7AzjF4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7AzjF4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C140FC19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775349333;
	bh=veH5IzZnN8aKz+QPyEn2TSgm2Qym5jkCjIeAhC6MLeA=;
	h=To:Subject:From:Date:From;
	b=N7AzjF4QKWat1CPybZNvdpchS8nLXgcoZS6XGbDp7YOuc0Ktx8zCpnn8D4Hyscf7x
	 zPxn/l+sWh++eDj0wKV/rLqRsMRt7/7WtTCF0Y5kd5fRZ6TkvWo81NI33QJMCGOHrr
	 KpbyGYZ55xEZGVacJorvV2al9ZHcuJ6u2sQtRtM2Jue3/aNwF3VFifQmCGs/JXGe5g
	 JQy5sVUtO8Tr0dRlf+B85AXyF6YpEy9Pk/sOVPYVxG63adlVduEWAZbktHt2dWldDG
	 RtBpAAdXvpLkFp8HE5hlw4GiV5IRN2aLb2Q2nZxxL9nSf+BY/ur/4YsRENYsT7w1uI
	 dp792E+n8dDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D89E63FFF
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 00:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534933369.18801.98896823325765710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77149243e7cd60769cf64c057fb91991f16a802b11a107c5b93ea892aac1439c
Date: Sun, 05 Apr 2026 00:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775349333
