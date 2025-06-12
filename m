Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3973D18EFD1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749701995; cv=none; b=UeTXQwtNCiK8yzWctSrxAdyuY3sRnCBXV+0jd8fQgXDeX/Zmq9qO+8/8+CK9fMMiME//ch/lyAyxSU400WVBNcoj/S7vGdJ+3qlN/5dlfT1cyOfo7rCBw5/aqzSqyuiNjbxtI0+VGI3bLrv3eQyuIl6HGlUwFUDlRX6GqQ3GodU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749701995; c=relaxed/simple;
	bh=Hy5fQi6jKyg3k5xRX4MfxAw280DdPk4MP81fhYOE6oQ=;
	h=To:Subject:From:Message-Id:Date; b=HAghDVVEv7empmMRw43s4fClGWPqTRgXs0BOjFIxJaXO6TLikDBJAAM3vlh0dCure67tcJn4YEGRD2yfElq1qC654KOsPfNOCrydfsv8X3IhN7+5Ss+YxorS3BZTBMMW8r3paFGclWVj4zIA3cFKLGFpdQFHk29zEuDUP+JSsR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcmFKcb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcmFKcb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E8DC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749701993;
	bh=Hy5fQi6jKyg3k5xRX4MfxAw280DdPk4MP81fhYOE6oQ=;
	h=To:Subject:From:Date:From;
	b=gcmFKcb+Dw5M0nE830+/k1+g7+bxSFLUsqx+iXTe622qW4J1sCrSkM7VJ+DsqNouN
	 BfRGm9UymAoKKoy6RNd1NEac/3qBrml+cz+2hmXGiPdfXlS3qEyjiJlRiO08KAnQSy
	 m4QlGm2n3LFlmrnaM+WmNDi+SNK1rxEHHcM3mXrxdeX3EwuT5GglmtEqrC9y4W9+WL
	 G/br6RqIsHKJ6Nsf3ZB8+2mh8JvrsYq26gduMkB4kuuTERDpsqk359nQ1JcWJrSK9n
	 Nkdgzt+zw8SIygTznzk7kfk9DVplPlNEo4tkyXvd9j8zgSSYrSSV66xbLrJmDNSxHO
	 u0w1bKls6dvkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEC6C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970199359.18664.10217598847189523316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca045998044b16d98f1ecaf5f6fff6afaf79d15cde19be9f48103238a426d50
Date: Thu, 12 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749701993
