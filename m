Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A10914B96E
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768566834; cv=none; b=MNAXTE7rVXMY3UYMPZe4DmM8oD3OegYPNqlqEeQO7yKuWuUrZCwGUITHoOZooXroOuO8ru0RUoXWzp+L5Q5WlxxjSaQ+7RLQAx1idSZ+9L9XZSaPJLf4Iq+faAb1poUnD5e49QDNM5+ZYLCUYuNxezIL6ic6RjrghmbIjqSVdPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768566834; c=relaxed/simple;
	bh=mlBdpgK32FpFzYDg1FVMTnq8QeUh1GhOa89Ge9eXMMA=;
	h=To:Subject:From:Message-Id:Date; b=Ed9nKm5x8ylI13tRGZpBfhCJh2nIWnxlxFCHGhb8UF4GJU09fJzxEQKEmHvCYx0g8Tke+IWCx6kGC51DrsxI8VqJ7ZaWqrHTZm9ECFMA4clKVxMrVx9tlM2OraHiJAeRoRx40icIxqQTxIKYvbfDgSjLBP3+npbU2emJsws1pXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq5TOzqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq5TOzqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75A7C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768566833;
	bh=mlBdpgK32FpFzYDg1FVMTnq8QeUh1GhOa89Ge9eXMMA=;
	h=To:Subject:From:Date:From;
	b=hq5TOzqR8C1mK/NG3k3DhOEJ+QS6PiDaE44QKAzt5ZoCEFBQP4X7eOtkbSyDZGNHC
	 2lIP5vlOXbRxvFCR6g483s+OUplY33suddqyeNDslQ4u9CL41Dh27zezsP7IRzMFCO
	 gHalasQTG1i+OieoH+sZQluJLbf7XphCM2RSJXNuojG+EIbmOOod6SIxFJTBMvnwJA
	 CoGMDQXTg4Le/oRFDOrNyukIemZK7Nxyb2fDNk/07xZUb3ifu9MwxDQO3FnEiRVKAF
	 LGCfiq9Nvv3l5RU3bu4tROBm9Th2MLXxxWds6LswLOlM0dtYfiyppLyqhUnD9EL6/u
	 yYP+24ggA9mIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90873D4899A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176856683358.27165.16780259470294161452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e2ab5033ccdc4f90e469b887bd29aba4a96cc68e62ecb854b4cbf05d1118e4
Date: Fri, 16 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768566833
