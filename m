Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3686F14AD20
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750991395; cv=none; b=MzzE3u+6K1pfVqjmg5vu6HVch6NhpmIZHOw4KQY/QcVobxrF3rwcsL/rJANC594JR8MOS1q2GhVettkFwDjRhDMPuVrfQ7mtUEgA7DTlaiRuWkob09jY+hRPvJtEzZVXcMe4B0PasWhvhJ8pHZtkGLHcm9jvKgc8FZ9U55uWq0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750991395; c=relaxed/simple;
	bh=FithdTVkqoz/6UqQxhClzpwgGSB0mLZiHFj6TsK7sRs=;
	h=To:Subject:From:Message-Id:Date; b=BpyWay8gipZqHQwv4mVD9kiOeIjf+yD7oRocIzsjiR0l5rsDlU11VLGMyRe6qJVPxD+Emcm4hH9o2JuRPqk3S0MapfMOblOqBewVJuNOvJPFmSp2vdJKcL+LJAtPMCg6wRy6f1rxg7zzA3dL1o/+c0QBl/1Ve0Jh3S4FgiSKKRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjGTOt9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjGTOt9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13CCC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750991393;
	bh=FithdTVkqoz/6UqQxhClzpwgGSB0mLZiHFj6TsK7sRs=;
	h=To:Subject:From:Date:From;
	b=MjGTOt9HV44vyv3oHJ9tlmSXRTu5Sh96CWgWqvUbvk36RzCPHk8zAcNUjzb237gpo
	 8Rb29GiRIqkieYdergoEowQivKRUWai10T/xi93GWfwv8YRU/ynxn4Yf3Y2Gi6c7zn
	 qojF58C+9nSt0+UEmeDeTx7tUUAR57/F+6vR9NpZy5DFB6gMgh8hYJ/wj0NkoIksJb
	 7kx2P7psSXQ/f0syy1gFjXeISSCQbGrjJDnPSeSc4CYIYQDczQRaEhPgy3V30Nycww
	 XJKoLTrW47L1NtJD6LOJVw1FHM0kvYjqbR2tmOG5ojC6nMmMeLBFG/nLm+ikM+LoHl
	 imF4XG+wxDMGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E0C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099139361.10044.3411417372743155159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0754b710888f94cb084bc9cf837fa48b5359a0055770ee896d9bf252786a9d1f
Date: Fri, 27 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750991393
