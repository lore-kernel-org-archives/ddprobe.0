Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09ECC340A47
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771512894; cv=none; b=sSdtXfYuhTBrfCixscp9dljFrEh0Ick1BV9pBq6qxd+x1f8pWzVUnYGzKtt0ZJTWH5P+Xvn7Bmj1zr95IylrIe6yNMxAwowijuc8WVbd0LRRpZrOKM4aB5jl05AV9ZSLP+gqZ6ak2vlHAKLNlzNBuq3hj2+d8Usg3ovETt7KpPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771512894; c=relaxed/simple;
	bh=OPKttEB3B2nMPvfj2X6AFiXzTbr6ZRLBlRc4bVR0aaY=;
	h=To:Subject:From:Message-Id:Date; b=i3N1pcsGse12V3vxi0t1dnx6ik5UHCZ/wnm1NdYf8wx4ve1F8jyZeUisyfz0BqHAYzOZOQVWW+fpSaLU0BjVwSfihWgz2Jo4zXca8dUg1WEK6vrkjUsiw1bPSzzWm4kX5lmpYzgiV/2KMoZPctMQDBitFm6GEl3B/WrKZfa4FfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbiOQGYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbiOQGYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A643CC116C6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771512893;
	bh=OPKttEB3B2nMPvfj2X6AFiXzTbr6ZRLBlRc4bVR0aaY=;
	h=To:Subject:From:Date:From;
	b=XbiOQGYhZXXzximuDCp6GSGHFUjfH36u6jZIplEKYeQzAMv4m9wvKABAkPttL3Qd1
	 xlo0xL2KexZw99PghkzaZyITKhh56gE4aZYbbu5E2yvsoFWhltnuGVK4hc64y9DX6j
	 EtO3h4w063qMgV9n+NDPA8MG9OBqv1HEIH7SSexfGH1VuwVZHsOyKHhjLlFhwE1X9p
	 XgD1C4Yt5ZhGav8eJZX9d1rz8HSCvdv/3Vd89EX9HwslD6agVPPveV293iyCj2tUlb
	 Md6PmRiP+3giWhGxpWzFLGBeJgSz4Ppq7lAQzcmDEMwrtfVbnaQQT1yFF/Qln88H2V
	 j9YD1h78czjzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958ABE9A048
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151289360.3121.6909793059049338084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd7d4fdede8d16e6428a612c52c2e84d425a451070dd3f046f65c81aa44c3e8
Date: Thu, 19 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771512893
