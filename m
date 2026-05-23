Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B3A314B73
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779532954; cv=none; b=Eb6wCqcEYVidX757uka8U66gg3nzQYztU8oOFmCXlF/vVphd6sjttuLUQdhYeakaV5FL2CRPqInOAvtNXTWT8/H5SbMfHcQP6Vuq+H++TyG19b7V/URPTxC/X2AKN6KAoM0zPeLTLePzVh9dSc0yXtoOecKEfrLgbkMXL2BS81k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779532954; c=relaxed/simple;
	bh=vtODQV6AdY0k8N1ITEMJZ1qTh+Lzy6oxfN6bywHNhfg=;
	h=To:Subject:From:Message-Id:Date; b=fuVdiS0EqGWSxNtGMmhNhVI4OdkSaVdkxjbi/7Ryooit3svgMqZm9M7+ZRmxZNQuSkPNL1+PauThyqBCOwJNEiNCy8NAB3bj2whNlmO+s3nYyNEP6RtdQusCRDPJGPUoW1KrW/Z94SsuE7dO9pkFKE9ZuM1dAWy3hjB/gUbg4gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQJE9YUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQJE9YUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F47C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779532953;
	bh=vtODQV6AdY0k8N1ITEMJZ1qTh+Lzy6oxfN6bywHNhfg=;
	h=To:Subject:From:Date:From;
	b=ZQJE9YUBoabcq7IqeS0CJpQHS5g+xALRBJD9sjsmy5S8HNJM7O+B3Py/8w3LvFDBK
	 sN9uVUgNV8aHaRiPx47S6LmmsYIhosgi3DiKL0U4OLFf2ZaS8Pq7fgRLIWTrbwVVyt
	 n90e8nOuqZ07TnQ8t+u+4YUO945zUPn9NRfgMoHIA4tjCGkQdKRpcUS5eDNOj5SBTb
	 jIiV8awseZ/56+mx+70rurQEgTNplbW83vc4HqJGKuI9uPIj6qN9s1w9lqX5zAdcyH
	 NJ+EXGDkV6XEN1ptHSGa2OV/PRhnfA1/mZ6DjrvusXyM3KJ6+eJytWGtTorYCkWW/k
	 5y+11BeJgkM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BEFCD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953295368.7845.1723546897431683413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13eb5cb4e2121677c5234d192ce0d68e825668cec95ce731dc03dcb062af0029
Date: Sat, 23 May 2026 10:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779532953
