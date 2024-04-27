Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2758F77
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714237343; cv=none; b=FRz2pZ4feKa54p4GAnMdUlnKzai/PqjmLhl+bein8ShASNFROyM6CNfEqvvhTwUeIb7qg1k9FaGmd7gr2TW6gUmNYW1qY3W8n/goMQiHGgbyjTz9Ymu8CO6w7Qp/2hGNZnnTjd8iG95OSFEU/2yKQj2dUWysR8w/9YUVGamViwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714237343; c=relaxed/simple;
	bh=vZtw3eYuRNBKuIQNKLPoAmUaEWfzP5D+WTmTP9n/y9c=;
	h=To:Subject:From:Message-Id:Date; b=KFHAjeYchsIyssv3zaqP5aIxUztrpygrrJQKaKgazXLN5tz8KIMwoaXg3p/nJqVgOBd4Y1NwC+1YRi0xSQjDByK5zXSArSpPbmaHqRhp8yipbhtAZTuNJB+zPdgD2U9VTlvYqQaxpJSpxvbsGEwx+agY2a8BY10KF61jUp2SH+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goZxK9Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goZxK9Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E6C4C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714237343;
	bh=vZtw3eYuRNBKuIQNKLPoAmUaEWfzP5D+WTmTP9n/y9c=;
	h=To:Subject:From:Date:From;
	b=goZxK9Xp+A3KO7VFDpOe941suq9rN1zRFSCnht+ZMlueHWnKyX/84Yz6Unwi9M2X1
	 P/WeWOZjcBVQ8yW50y+xh80nQYgXrvTC0ixsFPX2RG6snwLHYnUy0bAByHOtEpbLSt
	 B4SKmlGvIUf7ishSt+ryHUNDQchpBDV6u+qII6Xo3G+ic4FsJzD2MvSk66TF/3ILMP
	 yHwA+ZJVklDGJpPWrMxSlGYtzrLNFUj3p9HBUKbbbPrs8zRXM12bXXU6Y7hVmiG3IE
	 Ckf6zN6aX+IVhzG7CniRoEmJThYs0rLmM/JDRwkwVhfL+2zfFfSdtxWqcdWtq5cycj
	 xlBp/wiXihW9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E38ECC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423734289.20922.15726803963201591576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7543abf7a917907662a6bda631e2813002af3d1892bfc256a6f895530858dc80
Date: Sat, 27 Apr 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714237342
