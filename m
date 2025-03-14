Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CDA2054EE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741982934; cv=none; b=AMqvZ2luF6lf0FArqa55eBWwOOHS/jJPgJ4LkczUlYHFeauwF9h0WyW2L3SJS+STEp7v0ZZF5SwEokL3/qrjq9Rm2MTx7W2uEKTdRI7t1bMIKSQ1Y3CB1mMIYtv2nEaJEuY/trK3hqbgPKyYKxqWhAphsWYOxzxi9nDS2wb4UXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741982934; c=relaxed/simple;
	bh=bAVf9kS/CThJy0Ypc/2FDfWdKmHaXqgmSLMRYs0xYbU=;
	h=To:Subject:From:Message-Id:Date; b=H5cR999zCr0yTPxVujDU/sVO3ISP/CnZrCCfMz/lfcxu/45UY3IT0+F+PthLfx2zltJSZTo3or4QdTTNsr5gzXtDe2bvgzFKhztrRC02PmcwKMsqB4vqD/J2B+3ammc5GSzdd4ptjmMMqHjVFAbaWOCfrbcpWLXdvQrxVnMlUbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltf8fx2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltf8fx2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B70C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741982933;
	bh=bAVf9kS/CThJy0Ypc/2FDfWdKmHaXqgmSLMRYs0xYbU=;
	h=To:Subject:From:Date:From;
	b=ltf8fx2dH35kPp4cXmgHL8/jzY8B4IBEjjwU+5q8Af2iedqRVNnujok9JBafD/SCF
	 nks4/WDm5xEyLNFjmZF0YnbvQ/gpeWetrcGAAJ1tQDxNIEJ2Pzo2ERGDsFaOE2N8Bj
	 NMzC2E38bOpKoHujijGr0Agj7i5XDDbNaT+XiagQ4c8scOnyM8j12a23M2zSYZue/T
	 pQZynJ91XPFjybg1bOI2GHcBRnCDoo98glDgc3Dti6ezAmJpM+i4vJm9c4I3Mxd0c9
	 XVI+iCOIui99cyBzEzaO14VLjCcckrEhIjmcdE7X5uOjMMdHlZ5CCuaF6CJ1FjHYwt
	 8OR7hB3kC6zIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D991C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 20:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198293363.32076.17783772524050361637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fdc9d7c5563b1b43e4f7b1803c897b10d48c7a0ef9ecd77b306e56f98bad65
Date: Fri, 14 Mar 2025 20:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741982933
