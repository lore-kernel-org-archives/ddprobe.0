Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000516FC2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vd6L9X88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8221DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705114096;
	bh=32oe5Xv2xUH4c+hVDx7Ru6wAfHd1BjLkdfkm1J1cULI=;
	h=To:Subject:From:Date:From;
	b=Vd6L9X88jv1jP8HzFGhgxqJ/5YwHgJv9woV/WgC8RfVAaFd1Di4R2l+ATezVUnrgg
	 w+47FRQ1GVS47Nvhvd7LCGcqXoOHZMI6RTA4Ek6xMCAEdV52/mCy4m1Szwr1pDFZ/y
	 1OrftPwx3QVsua52X68IwsauQ4S/VsQ6GoN7qhn1lDcNzOgwOs1bSy3QAoIEK//Kny
	 xPFFOlLVyt8YQJiPE/KZb+zRvTQ+woMFphRKz0lSEyYX5XMW6R+8xSkMiJHgHhv6n0
	 KBoX5o79S0BZ2Au22/tE5Uqsjl6pgoHyNaM6ofFx2dzIr+INzlFlnm5baETcxQQoMv
	 EL4zrueFYN7Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6476FC3DA79
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170511409637.1162.67283632474946732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72422a73c19f909450a409f6f611fd048dc5b03fd52c1e59e9ad10ab519152d
Date: Sat, 13 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705114096
