Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AA413B58D
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755708594; cv=none; b=QeUlc0E33XIEtj6pmNix1/bOdHZQOc5lBRJ5buzI3EBguc44PfgvsPU+dH+jT9F8u0F4NEdAwpaRyNb6GBCXrcsQr6ejSKQMiKdBHs3KXg6eFE55T62S3p13XZ5EZLE4Qy/EwyLbzmIwKd6+7WPekIWwiofDQtO6nZHSFyU9WyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755708594; c=relaxed/simple;
	bh=sc4S0y59eTCgKIbPIlH5bFbQ534Acem9+ZL2vgFzB20=;
	h=To:Subject:From:Message-Id:Date; b=P6WUFXlcPewmFtdGuo/SfsV168oLQLlcAAmrXXPnQWKQ5FzX5qehCDYKupLk6yae/OwK6Ul/1oFRgEdfL4RRKg7p7XFQK/FNfhbnXcXTv3GQmnmwFSiII3rAqjGYOxmD35TZhN80TdOJoKi2D3tj3Z43yB5Lg+p7+QH5Kxqqj+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbZXeGpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbZXeGpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09FAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755708593;
	bh=sc4S0y59eTCgKIbPIlH5bFbQ534Acem9+ZL2vgFzB20=;
	h=To:Subject:From:Date:From;
	b=FbZXeGpoR6tN9f9pKvMz04lmbLM86kDOg74ccYykG9CwNSINoTdvr+mBg2c31CYfC
	 Iwsxn+DElTZy2vp1ab9Lp3YNxgQlzxToGaclyxSZONQv1Cn1XTWnVCpqB3g0W4Izgn
	 2dxwKrzhuOKszQh9VtUaRluffFYg43xyvAdITXzCcppYUenoBtg5yLjQcPOgx4zHwc
	 r7pbNqKsMJPU/qFifqFJcyMK3APcMkEOFLjGt5v9vRNMGhcZzzzmCeX8N0XQE1jnpW
	 wypcwx7zCNp4GjKxol/oRGggQuJuKXsNbhBsI4VFafKKogyDUmiEMZmzd9PhBw1nrv
	 sWmzt577I9gsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64BCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570859357.6323.4889509578691275937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372325457216e075d4c784d93060eae0b0cfa3bdca533b019980984ae3deb735
Date: Wed, 20 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755708593
