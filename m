Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2301914F9F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 15:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722700555; cv=none; b=aN7cUMp6Q71bzn+fohZZFPbWyKJGGDS3dLFgvA7UxxTsaI+cE9HwwVNyjDxMqhCPFETUqmOXWKG+edQRmM1/Q1G6wvdJk12S7dlURhPVG3oEOID7E1w9Ezh5P8VSCvZ9JtxM/3Hf4/W+jw/hSXNTpzFxwtQWXUnBb+uc201rpZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722700555; c=relaxed/simple;
	bh=NbhBabQNTFwupozSyeVBNQRnO3WRx3CV1rlceAEGt9w=;
	h=To:Subject:From:Message-Id:Date; b=JVYCmD8YWXB4y0XTdAzN19EXXPe8AV9+A0QCtCkesAvvUB15f9MJlI5BE+1xsCZ1u8rA3DX5gC7cH2Pf80S3sZB8tWqVtov22dVJ9DWCr6jqFyT2in3BgUMDKkDuzRNifJTMqNGMnyxlHY9RF5tUWPbQhyXuUCrl9ISIzKr4N08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJH/O0MX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJH/O0MX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC59C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722700554;
	bh=NbhBabQNTFwupozSyeVBNQRnO3WRx3CV1rlceAEGt9w=;
	h=To:Subject:From:Date:From;
	b=mJH/O0MXlxchDHRs4N7T7jIWZO36fw3DrcEnHtQUmG4LarGACjEcPVsCU0ZCM221V
	 NmbE0KiyEbAJxoRqJb0CMObMrPOmROoVKBCNNqj8nffcnxRFw6wC78Fb4ARwenfBTd
	 az/pxhZEb3qqeW3R+gON315GPYHuwDLucERwM71IBK1yHHxWhFJ9Akd0PxhKxKNbFE
	 i5y0MQJ50I5ruwK3ILZtyH1cjsXSQt4kCXpo2N8dV50Lx4BgnkY1F2kURYBRu0QT31
	 snzpPfFiUWLUY4DwAvdAht0QR84AlwCEmO035yfoo8N+wBGHEr1Cll8OiOfd6mbyBD
	 PjbcRBtd92m1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98168C49EA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172270055360.822.6178085943149377149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7887c4c824953249a938dd746514d51796f99fce3ac8e5380b4479baee6d03b2
Date: Sat, 03 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722700553
