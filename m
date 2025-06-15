Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA671E89C
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749997793; cv=none; b=LvpgPf5Mgcyp7z0vl3WEUxdiKMDIfeZpbMLvQno90cU5H4OgjjE4xfUS1tvUfuqzNZxEPGXyDl1Ppxa1mNAg8KQsi+OGgkYWzlG4WxHoULkQu48aR1tAjERAEhxQWVNGA/7ny/hwEGAEyOMTFqaDnM5z/878BFsLaWhcS0mDooA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749997793; c=relaxed/simple;
	bh=x16qd4d2GICA6Rh92e4FtUOyvx2FEgRmDVCGSW+YO3U=;
	h=To:Subject:From:Message-Id:Date; b=SZMrlXZzO78PJEpQqLhx81G9PCynXbPCAV72NnllP9JIYiZjvXhFqQGlaZZeqbxhk/9h8M7k4Tr3PsVXOx9uz9nXN829VI5mGZmyBFkU6Khx2xjxkOdu2X3mYAHuLe4LhZP5yassSGS7zlAgH3AU17Yi7m1EyJSNyJTAEowlc/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyBFjJdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyBFjJdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D3BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749997793;
	bh=x16qd4d2GICA6Rh92e4FtUOyvx2FEgRmDVCGSW+YO3U=;
	h=To:Subject:From:Date:From;
	b=LyBFjJdMROKs/tByz+78zDGKPy1MU1JsB1xxTC454lbc+dEPIMTeM2bpmN12GXZNH
	 a1mjOD8XKrEf0DSvjFp+6hHMV5Pt0apmsUx+LdjFq0bI8nXvOls2j9TkVvN9eeqO1Y
	 U+xDxdIIYC5zevP7/2BlEgvk4zB5zKHUp300nGK3ElCd1lwJ7Wgtlik6L5cucoIp+n
	 6n3E5qpV7RWvkMdrxpH+PfhyuEBto2LMFhI4URs01Gu6KmP/vKIq0vpYqVJruxMApw
	 RWZXBoh+TlpNUkvieKrqsCwlJWBsGSucOnPwNpa2Y2utKnV0SBRybdvc/pOmpHRc4/
	 pml0u7w40RDjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F835C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999779358.32187.554533103999765066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9cc61c3d626f43ebdd91cbb307cb2c26d7e204787171128da491678e42cb59
Date: Sun, 15 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749997793
