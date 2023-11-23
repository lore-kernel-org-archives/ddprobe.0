Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFD3623
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4xP29NH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84601C433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700698096;
	bh=MRiC5F7sUizbE424RgcMoI5n4vKBz3T1zFsX+79cDGU=;
	h=To:Subject:From:Date:From;
	b=U4xP29NHBAkid10KCSiQkW+/Yh+FEyI6tHumA1l3cWvX/oIBRj7JNISDgEEvc5aQA
	 icmNEwlumJM1moyu6rhufxTfGH+W/zSkf+M92NuqW1572CRRepyliMc62ukT96usua
	 u6UthywFhw3GVAr9RTrpydVDi85ikqfiDkI2Kysotzx8plgSi5pkQJeIBepThwHg/8
	 80CRsceUtQeGKu3zPef2NPaGQAXF52CGTXp/yV1Pw+UB2WLIFk4nrKZUG0qr14uBmu
	 O9CXbTzwTiuCY2rsvMcFDfqMRl0hHP0jYZ5KJuv+1TImjMaT+ASDCsBK+CY1N3gfb/
	 I1GVf1aeEDFXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67743C61D99
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170069809641.12188.5456957149184873701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4855921b777134fa99acb9179a8d958336b32de6683c69d39c0f68396598955
Date: Thu, 23 Nov 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700698096
