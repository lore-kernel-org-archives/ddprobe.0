Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34DC224CE
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712297896; cv=none; b=h70dU3ZBfsJTZwFo7UzO61IV6gIjniTVFtMFNrWIaKzV/LMVcQXnrMHTnCFX9s0o7Z9j/hACshy/evBHOs6ZvbtZRwEr230A0lJvk4NGSmH39agWU61TT02QI1RaX6fwD8PdpCPd2A2UIVywmJdx1I4v8FOFGZooTBNX7J+LfBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712297896; c=relaxed/simple;
	bh=tycbgF/HRe5XnpBcMCZSe7BCoZoFWk5d67xmR6sdduw=;
	h=To:Subject:From:Message-Id:Date; b=USxKB17w45/aOO1DuO34m0xssq1Pn0TSNmqNlMc9sXkvWfqljHOKgQklVLG/+6C7drK6LCss3lMUwyYiExxxPuWVd9/EjVVtMLva5qRyLNd1IRdMbSKl8Ns/88BRmyGPjIxbZFbo33r0buuqhAMGlb0Z8Ozql3QihRgFf4XTgsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOK3Lip3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOK3Lip3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70400C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712297896;
	bh=tycbgF/HRe5XnpBcMCZSe7BCoZoFWk5d67xmR6sdduw=;
	h=To:Subject:From:Date:From;
	b=gOK3Lip3Wyfhe3Xp7dnBV/KFKg9DbF67KTWsCba8ZFvc1Psy9Dl+qv5g1MOz1jmTU
	 N93wu0RjmiMStKwd5r+RdkZvLjSDcI/+hH3Jri8riGiVJNXA7AVTTlDGrlXRStDltQ
	 Q7/77FrOz9tlh+0MvQAmiZGbzCr0Sj64G9ZosNSBr47YH1IDOo0j0ROIn65qfixmHm
	 V1TfZKA4Xr2QKFZzbMqhTkc8c0XbgAPhKYeQOIRgctiD4nFQRnOTF9OtVgQjZnxWnN
	 vlRGhuY39trbzu5lXI3fLxwHeVd+jTCQ1UEM0jMFK0GIABsv1brVVmt/QqbMJpaDkK
	 A8lGL1rrfmkfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFDDCD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171229789638.29213.12744457691636348152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfcb22d486d9fee268de74df144fe291141b8ad3d342a5b44612eac1fc7acdeb
Date: Fri, 05 Apr 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712297896
