Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7EE349B0F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765991634; cv=none; b=jfEy3mYcVgFxWj5zz5ckc9+EuPIQODXlKt8zNgAedyLr1qa8NtFxtenNDzxqhkub6VV5SnEJr7Uy1sSoGfUK9erMzMPnwPHZ2IDWN+Ej28T24F3UsLZx/Mz8rJgMmm/tJtzo+9bVE+D2lluczxiMNZ38YZ1UPktubgA6Tmh3xfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765991634; c=relaxed/simple;
	bh=Qg4tKoICW47zaFULc18lsIADPzXZFsDIHVHEFp6JQu8=;
	h=To:Subject:From:Message-Id:Date; b=VyYOUhGaj+kO7gZKhp44aNK48BL3dxn1K99P8tMosV6oWteAIF3p+Ohyhnj6JrC/np1CJ5NQipp4LV4pokqz2kgmYNi2enM3JGTMg1AMcgFta2TQ3n3UX2f8Jl6aQhWg75iXoGmJvAs+uG4zpcGOBeRShgQpYFaoFkFsncShptc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sK8PeDy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK8PeDy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1584C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765991633;
	bh=Qg4tKoICW47zaFULc18lsIADPzXZFsDIHVHEFp6JQu8=;
	h=To:Subject:From:Date:From;
	b=sK8PeDy6xv7t/EuHch2GhifQ+gGY4hWosclAQAn+UmVq34LFQ6kTMVVDROR6i7Zl/
	 dEGIWSmvcA9znPzhpHh0hHmTwur++poeexnW0drFiCH6CnuScdV2sWoxTwcEb5mFAG
	 xntCH0bYMS0O22e4bkMLXOclPLXUZc0hTV+wtkk/4Jvj2w0Le+XGIbXnmI2WTYMzp0
	 8TdRdmDEkw5JlxcjkDBMUoRUrpwArzMddAVUW8jSsUIxc+M86VSh+692ty/L1FfFTG
	 8lpVxeOYDS/N6IRa4q8aZXQFa1bqt14jl+4ouaCNFtT7R+mlGxQLXyDFB2YD2fYIOI
	 G2dTDv8jQEKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172FD65C7B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599163358.17659.14054751092624623033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956c097a61f537e5516011c71509ae83fe2a3cc0b0e45e088ff3302f9ee4412b
Date: Wed, 17 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765991633
