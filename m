Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311237261A
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748097594; cv=none; b=bUak26OytXOmiKMjoyivdDW+di+qfDFhTOOL6nAg54KMc5SHDsVdx9tpE4FWUzVHYMdWcMYxsmrfXWOtvF+0jFaisXveWYg/CD/Y88HINkRESaej9AJjxvmwv5KFnwRTD6r4iQMipiGPUNmw+mk8376tZvL2aKaql0pZ7OP5zrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748097594; c=relaxed/simple;
	bh=och2WA5ewcw5NjdZ9Ew/OyWExAQlzII89JzUs2NtCLg=;
	h=To:Subject:From:Message-Id:Date; b=quZrm0vlIO2AfELpAmsTg0lRe+Chjntyx6tqWmM8p+8604w40g9qUWoWIfIFJVPXet0z7Rt6FmsRzw3ZpFsL1f+XzKVO3bG+Ezok/TMrFfmqOgFvJnKqHmvk+x0+8i8iJe/rS8PqXa+wa/eutnptdUgodU6YOzucVvcJigir9nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vz+/6Veh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vz+/6Veh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A278DC4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748097593;
	bh=och2WA5ewcw5NjdZ9Ew/OyWExAQlzII89JzUs2NtCLg=;
	h=To:Subject:From:Date:From;
	b=Vz+/6Vehyoe8C9MfxttuxXJ4TWmjz+6rKmz7kTCy/qT8JXAB/i/6ZtsbWz8b7ARFH
	 6UVIfoEZnutkfr1Kz9G7NgQ/8g61bm2gTFVAqqHIP0k/uxS5+DiTy5okdxCNPNYW1z
	 /UGRbzjFjeuK6q98IXOzEpKJHeR7ss34SsW28oqiDEpvqtnH/YwnFcginIsRHLetTT
	 aS1EJDk0UUYMGFK/8YHtV0VZLItj2p5uhqPq4iGTf7g/SXJEW8vazhjJMaala6pomH
	 g+EtOpx/jg+qK5JGG+OcALg09b9dV2EBtb+ZU36R6N0gEq5yP24ItSJUyKPFO/1Wcv
	 85Mvmiq6KTgRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9027CC54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809759358.9569.16595316969980708945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61f80ddda7b50e541029e32b6a3e333650fde5a1add1d9478bf4511b3b6e3d9
Date: Sat, 24 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748097593
