Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4725281720
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718791163; cv=none; b=rKG8vCPKl7x3NX/4LwXa/GQoD9NDYD+xpD7S8T5fWa0rVidkfZzVTPBeCKh4dlgNrV29v1Dktw23Fxwo8qQCQ92Sq337NYE/6c+Yp193WEztL3PVZ3xUxVH43BA2tyyCfnIrqy3C1CMID/0wWVi1b5HigqbL3ovtVI2DoRRfj7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718791163; c=relaxed/simple;
	bh=Q27VrGVFURgu5zPWiLT1jWNM1pDMXIAH0R5bnk0HJds=;
	h=To:Subject:From:Message-Id:Date; b=L31tC2ReH735sl8k9NUv0DhSdcbqzODOZMF9fhp68JWnCOecWJqQcwd/X3gCt1IxBriuU1lo4276zGiozCKGT7VsKV0OtguKwlj+AszFtk4Ku2ckVsbXoMF1iLPoZHTF5v01eUxgKh5H0o0cPDDRWzXV04lTIkh2aK/ItBLDztg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZRyZvWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZRyZvWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F45C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718791162;
	bh=Q27VrGVFURgu5zPWiLT1jWNM1pDMXIAH0R5bnk0HJds=;
	h=To:Subject:From:Date:From;
	b=fZRyZvWYp98QjIMv93wMWsw5lNH6NUIxQczNY0uVBCJdeiJzUDX1BUvULfwsZKZhl
	 d41TmKxlFi5/Ac6K3BsWY4a6ICoEdRT/AxtzmjyU2A/aDsjKqfhD5TmjoxRZBEFV/0
	 MaSnghrjTRW5TSk3Z3d0b39KDfGi0b3nmxbyzuL9TUARnByfKxqxuTqG8Iz6+gUGnl
	 z6Ug5h60VfLAGdxJpkt10Bq1jEOTXANVNYfUfnWGFW1i5jQKOvaC+XonRCneunh5Jl
	 jPqjL+nlIZgKoYacbkJlEyFqzXXvSsDeM13tpfCE8nri/azP5iyN+iJ5Xv4U8rvJS7
	 TOzMYSrCTJcnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86FCC2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 09:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879116280.15883.17051845470079423648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3bff7d83f8baf425aef8cf669d761155db33fc0599920875350b231f80f993
Date: Wed, 19 Jun 2024 09:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718791162
