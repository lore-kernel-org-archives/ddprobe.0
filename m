Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED26F4EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713587423; cv=none; b=gv2Oud/WZo3WWVJivBPlQbSTVWtW7Jh/r22HFVPhP1UH07a+Qx4hiaqrE85/WpYPDf/ns+/bqRwXS8Rhsa5zee5+/MthTDrPEdWrTVkrVE5M1scKE7JeIpM2rhF22LRKPrDgzmBnwib8QmacRQ5i3JlayQhMbEkgzoZSQ0TBfCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713587423; c=relaxed/simple;
	bh=AXvjY5RDk+CxWFh+7Fpw99Ts6OZ9Ygv1u580KNPm5O0=;
	h=To:Subject:From:Message-Id:Date; b=XW8237iONzFtfaq3yb3fjemHC8gm4UdMRYCG/eoMkrLjmb7PA+21z1py/JmE5ANqDm8AQKqrpgR88USxuKXTiQlTHLC+xI3VFtBTcyMHUE5+MOevsLnuPPesLN5Pust2QqnTw3TOMwBNCk5ha+MXIGTyP11C95+iZBkCNZvQw70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kz07z5x6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kz07z5x6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9842C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713587422;
	bh=AXvjY5RDk+CxWFh+7Fpw99Ts6OZ9Ygv1u580KNPm5O0=;
	h=To:Subject:From:Date:From;
	b=kz07z5x6gjLCt8RrelOckOl7socpLlnVWBrTMgg6x5gPzvpmly/v4Bx4xaBPgufaN
	 pleCYgJRaX4AppEyTXq6Y/zzlNNL+W7oMDTkGtFnif1JgShwAFcYdIC8W9axn4F4MZ
	 w2B5L2i4Hu5ows5AOMojDM53GQuoTn3Rbm4qqerYeV2qcTc8onbQgkc+W5FWu5BwUb
	 5339QWUt54S8MJsezFXm9h81kGPPEIvtYY9c9LIYxe2lcPIRoA8dpVK7nv//4QdwR5
	 xyOmEqz8BNY9kg2MpCx0GEu/KM7DQ1ZwyS25Jy7RIdmb0uvKy7mwKoqzrcXW10ip6s
	 hkrP3iJXE8pPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFEFC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 04:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358742279.16190.8736188368637725042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4add9f10d68a4a1451985651106e450352778a84daa62f33b690f98e115ce516
Date: Sat, 20 Apr 2024 04:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713587422
