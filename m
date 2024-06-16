Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66003163AA7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 04:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718511503; cv=none; b=fV4T2EL0FKK/2X18ShxEIWh+sl7i9HixBPHuieuKwkELgfDb9LMJYAHISU+A+dGqkSeRtGao5h9D3H3JVa7PiYukjYMqFGq2CYDUgu082EYCbMlHgvemLy5z7S11iNGCiu1WmyiNcgR3Lv5Zre+K2HqWQP1anV+44vGquNrDPD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718511503; c=relaxed/simple;
	bh=Do3ztgZlAkNW+/T5bqkoiATrw7nZ+y3DntZkgz0uuBQ=;
	h=To:Subject:From:Message-Id:Date; b=CFWXZRZjwPwAh3/C0EmSBn/dVI9IlsWfxa5WaFeMLSoT2U/GQK9/lY7t07nR2nwTvPxsqU2z4ozUMMhvoSBvzseMubjQy9FEIaUv1kWa7JlifPzpiwaTYzrmznWuuxTSIxONYwLNjQWHJ5mm4GkRqGuc3NeA9YbpU2bCKHvyTso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmW5ybkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmW5ybkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F57C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 04:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718511502;
	bh=Do3ztgZlAkNW+/T5bqkoiATrw7nZ+y3DntZkgz0uuBQ=;
	h=To:Subject:From:Date:From;
	b=bmW5ybkGaD6sIPtMOAWGEOaDKs+PT6gxTRTY9iiGdwj7cHTTzQ1Pd9KCk6EbdXzdX
	 8ssP8RZeiC8Gtu7EwEY3iz1EVpGlLDyHFwRZ45SQcXnE+9xrKMn47X55Z7cCZz1igk
	 THQNyTls1T1vgx7xEIK/IWRsmPeZPU6h7sBIZue0AXB+r+69KM9ckmggPAyMKDuJ1p
	 meXPh1XRNfb0uChhVwvnoy/oasfEpRNzJhXfj4MRM5oenOOBNHiiHPquxWPzCyaSVl
	 54OrOEqwdPqSjQ0cLWvCDJB40NLw/ZbH9L0I04LxZuW4yf5A1NogpsXKECnR6PPAh0
	 cO0S8EqMaoiFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD6DC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 04:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171851150281.28210.11910894982227139292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4150e9bd196a161791ced257582dea1121b48f002cefd2fc1c0cdc83d87971
Date: Sun, 16 Jun 2024 04:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718511502
