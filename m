Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E1C3CCFD2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774336494; cv=none; b=mSAh+2OXnXVpXoGpwcUm8kNvh2X5VYIkXiOczjIn/deYcjYECk9uKYKDooHMC1/8Y8tcyvWD/e/btLCNGVTSpCdfIfaLhbRuknhO1wl4bJirNAawYysDLb6MgrkIPMnaWngf6G1DjwhFKu8KQdnkmrhd7emlM809wL28vpblmLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774336494; c=relaxed/simple;
	bh=ED5T4GF5UYVRK8yzyGiFNlAAaHI0zw7+P2HLWbbeZEM=;
	h=To:Subject:From:Message-Id:Date; b=SPHCflg2fUSV3n0G/FwwVCtbUkXqG/kBV1YwHyCJoHnfH5xezc4kibCcIfGeYZRFdoYazwssl01bt+wG/kq6UGfwbRFcPf6jXBZDF81tp73b9lfAhMmPfiAttgtt8hAN0srqRXUXkfD/1xFIPD3jpHRX+Z9Z3aC5PqCPcKpTREI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZF+Dz+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZF+Dz+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E564C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774336493;
	bh=ED5T4GF5UYVRK8yzyGiFNlAAaHI0zw7+P2HLWbbeZEM=;
	h=To:Subject:From:Date:From;
	b=mZF+Dz+F9idE9G6CeXiaQmvGzQdVmrmkbvFEmMCKSh8zjIdblOiywDVH0Z6Ll/Nf8
	 /XvvnHU3zloZdPVSjoMtY9G9wZjwKtgeUdl1a/VkV4ypOqoeSVbUel7s/Yd00uoEIE
	 S99aaKFL2T8f8VT+f7zOb1sSMJFNKkqoOEtedRCaCnwJesitT/3+ZB3nsQad+m7U/2
	 XmGaShqVbUcM82d5Ct/ds6oeRQclwdnL5FbNS7qOfly6RTqvnKyNvnyCKr6N72qm0O
	 OcAMYEQ9/aLk2vb6Nx0RW0j0nLwxEitzvrg/bL9fNu+pJYaFiWZVwYi7mjDMdu6WTn
	 suvUcBELrCM3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC62F532E8
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177433649358.16039.1241071109002205275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11570c0e83c2c394e9b4f6a98c2c5ea901f3170522a864e15c58dc284f173d2f
Date: Tue, 24 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774336493
