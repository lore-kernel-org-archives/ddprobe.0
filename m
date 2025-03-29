Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2A5524F
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743211794; cv=none; b=Nv7uDUhuWsVVMmFvxVb+2lo1D8EtSYN/Bwc7/5pCqms82avFQBC2jwuZgYMPbkYLd54VAb5BTV5258IAvEC0UDP/T6s0yCPlSQ2gXLfrmEthLg9ckb3sLzXYoTd8vP7kdwId3uDqvXX0e8QS4VGDNQFT1qf9g/gOPUlrIp7zlaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743211794; c=relaxed/simple;
	bh=RF1U5p5Mh/EAHnMVaAWzdA9HJaLHFgH48l9YuckIeu0=;
	h=To:Subject:From:Message-Id:Date; b=Eszt6EH+x6+/n9SydYt3TzozHw13AqD4q30UcShtSqJ31aS1zBEIW7zEBF/8HDKl06AnU0i5aaaYoI5xwGgbUdbDcp5hWRn1FBi78YKz63A9OuEggSuPcohHOPvaSRQyIAU1pjFcHJINpUekIgU3TWD6WYTUfpMV5S9sOmXtpYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOYNAoBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOYNAoBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4174C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743211793;
	bh=RF1U5p5Mh/EAHnMVaAWzdA9HJaLHFgH48l9YuckIeu0=;
	h=To:Subject:From:Date:From;
	b=iOYNAoBQWGdxS62Kzk6F8MSJvEhw1wtl5Kx4/mMSCAXrVlF0GsQCXPtT/Emyh5Pud
	 ze0uqgUlrGvgfDDwJKXUpl1mHL66IlEhJbS83JF1l9bThAJfgmU5RnETqBMaQwwydz
	 sassww3i8Yua9o7niG2hsGVp01it93gfB2oFVGTRuZsaskaQUrNwh5ZuC6sGBGufek
	 XXw4x4phW+0516DvDfFz4FiTuxdDTKd//EdZeg9ccREnpPA0HZJTIsMzX3+1fsEgXS
	 NqQtQYs9KAFeHC2pumMai/pj903tZUMl1AofIqWBj1s43Nk44YtpGkVPJseHyUZXi6
	 fKj6Dk2QV1mLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DF4C28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321179361.21794.4765795289117809108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2599dd81ec854854678cf3cdcd1db8e42c35552c107c687603a164cd37deb09
Date: Sat, 29 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743211793
