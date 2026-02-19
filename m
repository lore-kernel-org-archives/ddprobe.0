Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E25034C140
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771517694; cv=none; b=q95q5zt7PWUIbwmkg/3Tj99HO4EyzzyrWoD3iOxw1u3kW/m/M/QEmsKtkqcYZB6jIOF85fkJzHBl62z50iV71VQR5dszY8dBqtnrFFGci5EU0/gA9ZkuSVoE8c6HJAF0A4HhivxawepxjqCUQutXmKnQBVoOXHEsB+PEDVGLmZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771517694; c=relaxed/simple;
	bh=ZMFumHSlsWx/I8g1nTVRo3AAwWPM/URDFCKVUQb+3zc=;
	h=To:Subject:From:Message-Id:Date; b=R87zuPN/W5hFpZJk4AOyOOxxezqwb8tEuHEZx3bd9vWENIrvoHp/3ekE9LoMirRXlYubzgl483EzrdYEeeUskM0uc1XSiSaOFoGtlbDBTxCXzcDAjQ0g4dI4lZTWZ//aRv+we4b8yXy/4ymEjmVLe6g9uFiQl2jJP1ozwPC6Rsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgGH3q5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgGH3q5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB60C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771517693;
	bh=ZMFumHSlsWx/I8g1nTVRo3AAwWPM/URDFCKVUQb+3zc=;
	h=To:Subject:From:Date:From;
	b=MgGH3q5b0EpJA0drrINNyYkimOHeQqeI8sSXBEwV28g0+Ze+U9jpJq2/G5hyq66YW
	 g96OM2X9pdXrHCkUoIE7RVsW1QuXoJ8MihqzzhRMYSny+mwWIMnhqLjuV5RL91nKyT
	 uLFwxq+QXCgdOuS6l7Jb8Ky8deVgQT1SYPa34Gqfdb2KzuFAcB5kEKiWSx6hSOWaGF
	 uZoEvTWhYWpNi1PeNgbLBcy+JChAiLq1sOAzdvjbF9yCgsnnrY9b6jaWeAQ5YZs52z
	 jTLP8BTF3mbjRBjZMN48vupq7wYB1IM2PpIxm+hSV2j3ISRCyKPBCMPve/8JzFcTdw
	 cbTyNCJDXpqxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B3CE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151769360.11351.11352115575189420839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d2c19d2f3aa2dbc50d86bc9a6bfbdb2ffa552391809294667bc01ab0eb82b1
Date: Thu, 19 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771517693
