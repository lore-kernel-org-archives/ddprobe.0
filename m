Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2BB3C0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721094923; cv=none; b=IpiwuhzXvaMaUPweD5o8cCgVQVmuEpoNlLjJauvCwib0Lqwg3D9V1v0Vv75fnshgJ9D/5sJNbFpyP/9/HLr6eu8VXIBIMX7CMfV5dmypY6Bqx77rSw51DIrx4qUKAJvF5tyi5pk2QkievQg1NltwmepjSk/KOioRrlNURKwDefs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721094923; c=relaxed/simple;
	bh=krovbJZg/hBE1GqjGxfAoKcvo1YcmKtg3UD8GLG1eaI=;
	h=To:Subject:From:Message-Id:Date; b=h2d/Rdst8ZSQqxlo49P/Qcm+uXme5fG8aK2ViXb5CwqXBfqlSA3XNnmL0CUja2X3Sy/pLnc5CeVM9hAcZI1Lj/9tbU0P5l1L3NvCHE/lxVZGzM87MaZXmRKAiTnBKc6mcgpu/G8n/Qc9uOHYtJByrjx5Lg/KhvmcfaJN4ZBbokc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9FnManF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9FnManF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D422BC32782
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721094922;
	bh=krovbJZg/hBE1GqjGxfAoKcvo1YcmKtg3UD8GLG1eaI=;
	h=To:Subject:From:Date:From;
	b=D9FnManFW/JFB0hEjAD5cKaKH/KyFX5M++rJA6BHJovNxQbAh2u7r1SF0+uffuxZA
	 Etto5rLmX0TH2EJMQqUHotwdYZbaA1EkfzTP04MRsAlpie64spSG15oznNNSA8oxG5
	 JTADggpuDEuQTcyFZUFIN+JDXqJTm2Lz19F/yKlrLjeUbGCcktewyid6ji7WOn4dN7
	 q/cxFr7/MKrn1xFia/Pu/Mft8yps547eY7xDjAb9mVr7zUM6j9arLNkzm/nDYVRFee
	 lEqwxTr2a3UIvSB7mCz/Qf4sQy/4C0B3i7Ye3v484wBhsVdsljbOvLfKFfbgFjBqxM
	 h/4Pt0c/gzrvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C125CC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 01:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172109492277.29864.646768383097929884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1474fd7aa00ab7a4bdc1e7919d9e507c00fa912b0a5ab0b146feb0f8f0330eb2
Date: Tue, 16 Jul 2024 01:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721094922
