Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BC03CBE85
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779042634; cv=none; b=AT2ef/6rso082SWntuWVvuq4xzS1M157iVlPZ0f5ADELu4TmfJWkAxCbUwBCDg4oYd7vqGdkcfPh0pyyt03yJuw8pJQyiIVy2k2nmy7/uerQW3D5JvnqDLLu5H59oKLbjf9x+WQ8MvUsFY3XMRB+8lWFp6FzqebVYvTad6f8dzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779042634; c=relaxed/simple;
	bh=I6KeY9sgURqrGzHrakB0DZ8SmGbbU5CXHsOBAU1J8cU=;
	h=To:Subject:From:Message-Id:Date; b=eSRMfUkqQP0Abn/a6lALbdBIlXCYn+SdeDIRB4NgXhQmHmKYe4Q5QFXFcH0+bIFgwZQfSV2q6JHiPAOzJ3bzlXRmtybbfld5YnmsV8GXnhjZbE2eptmKtC1uRFDiHpnOyDbIRicmAXVMG8F7J/R7C/fA/2nq9FeJIWD0GyW5i80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYV0i9hE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYV0i9hE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC984C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779042633;
	bh=I6KeY9sgURqrGzHrakB0DZ8SmGbbU5CXHsOBAU1J8cU=;
	h=To:Subject:From:Date:From;
	b=DYV0i9hEEQ3ecHQCWm9UZQQzHOL1AGdvdccMhQSbWqTUvv0mOoHcxR5iOLH3nGxMr
	 4aFPT1ZR0kZYkIPSmfbHsnu/IhSiGytqCLDwAGaVZ4lwka7nG5yJ+G3DE5RueSBCWv
	 mH3fpLTKFWB4iB8WJXnq1A2aygQ2427Nn3ka1rf5c+hPwtGM32xAUyxKt7qGwRw+R0
	 4pCehRkzd/S26tVcX1pOY2HIRStK/T/RbuIWWe0UL3Nl0Pe/1XU8Y907ZWA6KSfu0A
	 q0yLuoqdRc0xOIuwnG7hg3G5/uIMd5C/enQmKZKESx6Prorhw4tY3TNLs0mN9NEbs5
	 uZaaBZm3raIKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2C5CD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904263369.22394.11177210089416464761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4432cfd6e232adacdd6abc25233be6f2a161033af064c390c2a254a866ca34f3
Date: Sun, 17 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779042633
