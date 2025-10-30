Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F227D269AEE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761834594; cv=none; b=A/FpQwG/QSWgveulSNY9m2t8tFYdYajKG9DIgxzvhyjiZDCCt67lO91yMi5VURrLRGyoTy9N9RRSxvpVZjkUUmWYmngQRpxvUbL1ZQ+mKl9A1QvQhIK1J49uPHkVNG+IWy2uUddz15fn/jAl2yE5hmTaf4Lo+qpgs19IaL8FTIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761834594; c=relaxed/simple;
	bh=D2QuiedNbTzL4bFqA8yR/Y4XyBE/fVPMVANmOE5AVhw=;
	h=To:Subject:From:Message-Id:Date; b=TQIJbuWxoOl5c/XpNokTtSSKC3fsZPh4p3OSSQmU9qv+wcIBPgkCiVFk/l837E3HQ+0MDZo1p2OQBh40yUz4uxwmFQucP31XSiFV8SzdHGajv6SwYJRDlfn2+EoBviz4GA4Jpf+w5CfKj2Y0Alj0XligKrnB9pds2JHdan91KPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBCvPdRH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBCvPdRH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E795C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761834593;
	bh=D2QuiedNbTzL4bFqA8yR/Y4XyBE/fVPMVANmOE5AVhw=;
	h=To:Subject:From:Date:From;
	b=hBCvPdRHNoGNHpxnhVh9uQj1aekYSovqxZOOWv9Vt0XTmJfcgz8ud4e15Kpta29WR
	 prA3I9m7l1WsyHRj5sakVYOKu+5uaKJbUzfpMQHrdnlPIXe3JtR6tlLymfVrbQ5l6B
	 5/o6yRX1eo7lWFwa+IvgmMW4UoI9xfFLZpK9fPbvTpLcBcDnQuV8kP426VpGTjhwnS
	 1QAz+zVd87lVq7Ygu2s5tqiGTTxf+hnVRg/QXVfXepG+XO8TdqwSvFq0egFka039QR
	 UwZBITAPB+28aGcNOKFjGa6cfl8u1alBwy7Y08NZ4011kXDLDKlvRZkUwRZvyVPDnq
	 MegTXpfQx0Hjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904FACCF9FC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183459358.14527.14190485831629832539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b1a93b360159799841755a18b8fa22afbd8bebda1314308109550d0f97b154
Date: Thu, 30 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761834593
