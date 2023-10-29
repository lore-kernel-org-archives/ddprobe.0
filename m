Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2564DBA28
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8QXPNYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D56DC433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698574696;
	bh=UlGlyDba33s50QWUUZz84yfU6cTATsGVA2ayQ3SkiqU=;
	h=To:Subject:From:Date:From;
	b=u8QXPNYZw9F4psHuJJEpHEKVBTo3MsKgHDQOAHc3uUSsy2H7DpBDs1iXTugxSMTCT
	 4f/bdD8X6sGsBa4BZqE3rK7Qv8naNhtXP/AZTaGamQe+QzKAph8qDkMJi0Xj+zRPzv
	 HC/PPzUwov6ycrUl8AtFQMUnYR0KffikMbJNSvATXw8VilIKU+zaIf+FRzpj8TPO95
	 bRvNu1oW+q2Ui1SlFMIr9FOl+waz6hOIW5vdRCK/UxLALxrEMY8UJuLLQWkyUVX8lw
	 2JOtdpl2TfiUQ89PXZuxJVARUQ3tyS6TsC5vDkojmdRcdjj0xw1DGxogByUmXnamG0
	 HpCHY35G4S4bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600E5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169857469638.10247.10477907738868381032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235b759eb91c6257a2110e1593b9034bb45438c043784f4f1a2c7566a4d217d8
Date: Sun, 29 Oct 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698574696
