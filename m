Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E5234DCC6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767812034; cv=none; b=ExAjBcGlVjbfAvEJmbTOCFBXw5Emmf/Rup/jTzGj3ThFiV3sECNQUEmcaC9kWh92Qyih185/UEJRFMi3m1S8Sl53Y9kGqE5Zq7HRCKhzY0kjUTD1aCguEweyJ51pjpadl+aCStkOUIZdcgINNa1RXJbF/Ed4hZbWYtkEnOimjxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767812034; c=relaxed/simple;
	bh=2Q0amV2t4bb9Wrlvf9prF/+1RJsrPF3Sqt+F1xQDepI=;
	h=To:Subject:From:Message-Id:Date; b=LdF7K2TXf6NP49rGyUJch1c2jLKMrvJpGSMvLzXjtKwKT4yapTimgqTEgKz3acXQrFs8rL7OIsrFX6R+pgSNH/9Ov4GBz6P4SD7wH6xmtxdkDvHExW/bmZG4+U3rKjFO2CIiHTpLutByPx9zudgUFca6y3O/h9tOLiAdUJylu3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VstDNvwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VstDNvwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AD4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767812033;
	bh=2Q0amV2t4bb9Wrlvf9prF/+1RJsrPF3Sqt+F1xQDepI=;
	h=To:Subject:From:Date:From;
	b=VstDNvwCAmxaPkBx7jPTwZuZsjgAtNx5Sz9ylAOqV2XDTAtDdWLBP2PD/j/h74x8L
	 vFvm1xTHPqqLwrONdjpKpMkcvzngV3M/CvGNd5598NWKRBfD+GKg1m4v32NEZpN/8G
	 CRMpOvxNGf+EoP5PgY5ZaV2+LkIq8dDTw34yNBDACdn90CvzVmMXkCG5Tc9QEsP38O
	 fFqI4/kcsAUX8hMamsuI0BoiFvmdN8QUgYc4BfQZojku0jN+clGANj3PKzJbF6Dopg
	 S8YM9b+e5/zVAmNgVEuIVRE2i2yNGl0XDuH389X2d6U52fGsRiqkRzcNd+xvD78Z88
	 8A1rfS8EsOeTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E68D0D163
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781203358.12275.584636778365383371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488ff3bd084b8516636bcff375f3cc91d5d46015f968ec1449ebc575ee8d69e1
Date: Wed, 07 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767812033
