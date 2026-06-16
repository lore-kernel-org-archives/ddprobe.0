Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B4031AAAA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781615794; cv=none; b=ocqTgInDmLMYITmU+cqhTNCmvMWHp9HK2pdfXiAGIpi7pXBiiZGjM5x2QnRoI1pyoVsuzox7tnDIiRjZFWkBLFxgUuLwmQ4Eiq2Rm9gxdZVK3YSL3mUV/z0LZdIzO9EuygrCphqe4E/+DqUMwSUYuXbZcetsPvWX0lL0BYub0P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781615794; c=relaxed/simple;
	bh=dmWvBuETOicjCWzcbYsam2m8i/N27NGooK1PIHWsTCI=;
	h=To:Subject:From:Message-Id:Date; b=Eg8Vz8AXdmHgK0Nrd7C9OaUzaF6C4hQXxzYeh7VGCDrgQjlic+Q+IFMBNn5rG9hUw8wtbf0UzySWGzi4CtSyXRZYvFZQpQyvtFZqPLgEiEhuoObL/KQuvHWtTGC2sXrMR6rePpdV5+pZapLYIswimoXFR8VtRXZbITMbVCTtNIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKYt4rxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKYt4rxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE90C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781615794;
	bh=dmWvBuETOicjCWzcbYsam2m8i/N27NGooK1PIHWsTCI=;
	h=To:Subject:From:Date:From;
	b=KKYt4rxiUDlXg9PWFAkGvyEbkgpBPHagnf9Dnjp6Qf/h1Qetn+ZeRvCCCOVZXEqtW
	 u/p9W0366ELolhLagQoOobQ9IpVwyn7qx3JPny4ILm8oiL1JEdi2Bzg3NOF18OCP3M
	 HrOxl+jHJswExDAFvRYBOM2f9mxHnalFmAbE2GlPQ4P5+kqEZBiVyUTYMD8RIjVjJ2
	 Cync/EdjRiXyevvzOquwOeNJ6owVe0Tw4he+6rnu6/MLhVJezcPqnoy26RKFQ+lY8c
	 XKhh1GZT/OmpAtrWFWsCM/sUZfjcVR3u3RrN1604h35SfTCqZlX0zqJPwPDknq7d91
	 /iaEFZQU5Z5DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98B2CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178161579374.12692.11048752389237551164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ba4159bce4043de37458a664fdb74ece5cb5c1106a2399a3f96750f776e814
Date: Tue, 16 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781615793
