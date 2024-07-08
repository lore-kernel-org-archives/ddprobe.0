Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CFD156E4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720434383; cv=none; b=BL99Vmca0L+e1PaYt7qJGAIxp5OsWKZEPFOAbEzPZjwW/48DfasxmCVm5nEiqhHqdOwBBzSYBNGILXTVf9wOoQVY6iYjnZ2CIlRzXVxf8gCd5Cv481ApGJYARnDTV/5eH/fvDNjJ0Xz3fMfr8XqDw3FHj0wgmGT8GrpJj8jhDrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720434383; c=relaxed/simple;
	bh=Xa4jpaR4CeBNwCmGEFv8jUh9t6GJYqpp7fgUd1bt48Q=;
	h=To:Subject:From:Message-Id:Date; b=b7YlVymeSENtaLGCR47IypxA+2TJ6Hc44heILhGtbOZyGfDjsTM/6a1lXrkLygmke6e1424xsXtLQ7QyHMz3Sf58T3mh+tR8C43yoRbisaDfzLXuA4xPLq/6TKm0dzbeO3D346524/MbddSMG8Hq2PpkvazTB37BH9o/qWDwFz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9cMqlvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9cMqlvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6624C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720434382;
	bh=Xa4jpaR4CeBNwCmGEFv8jUh9t6GJYqpp7fgUd1bt48Q=;
	h=To:Subject:From:Date:From;
	b=n9cMqlvNjJpCCUJLAD6hcqM7De3gLXEz1awjI5jGo00msX9I0SE42oHrgIr8rljCC
	 WA7z3Gv0uJ99ufqHtSFnwKYLGvxt4dOtunucD0mnVsUpHpPwWGyS32TsVa5FknhhPq
	 KWzRB6SFM71SPQ1f6TzM8M2k1grKCwh75lyXm9Iao/PrthN4kFfcI2BWbfqRZllsoC
	 uu5gXJkwFnLs3OL2sGyj3TZMHuRNqnuySi9OUC1Nkdk9mwO4ZgvSn+dxENHdpC/JZW
	 YMIo4LBcoRW5PH2DreUtSslxK611wdy9UDbMTs7EcHDM+xmKPzWm/GuPCguKsK67tP
	 dcAiQECxSaIEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD0AC3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 10:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043438276.4322.14219673498660366717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169821ae6aef06d9abcc981b8280dd5449348b644689f8c22466ad42be16d154
Date: Mon, 08 Jul 2024 10:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720434382
