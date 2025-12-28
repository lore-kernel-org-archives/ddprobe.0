Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A3D226CEB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766958234; cv=none; b=e/ECvKa+MLzCsSUeCprlFHMo4UZL1IZAGLTV2rymeHE/IWdQpNBrm0BYjekCRNXgHcntoiAA6OL8SZjI6gzawpwQGnB+1Y017K/md48CIZDbhYq+9Lpu7Nf4oRQMb3xfOTPbzfRnOXDfoHSbTw+B6HIBBgntCcjX+f2j8QR114I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766958234; c=relaxed/simple;
	bh=BYL4DKsOnsWKgdRQZC+GS+qoTRlm4nBuM7kwRnF/cHw=;
	h=To:Subject:From:Message-Id:Date; b=u/qF1XR9XORk177zQC/gbpGZs/Ue3tKOgmDdgz6e+nYddWjmf/u+YEdwl5rZHGyYgeX0X/+iR+9Xu+8lI5mVug1v0vD+a5W1bZNO3sOvy2kUN3+lDpIsJNnKgWUlRAr03IPApBFgxny0hxdMCXT1EIXK/o0gV5+jLhqPlXsFk+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ra5bbQB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ra5bbQB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C345DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766958233;
	bh=BYL4DKsOnsWKgdRQZC+GS+qoTRlm4nBuM7kwRnF/cHw=;
	h=To:Subject:From:Date:From;
	b=Ra5bbQB8zbaYf0S1a4R5SDc+tzUTpdTSG0HV2P4t8d4PK8RoY98vDsILfew1Wb8G1
	 tUnN+AMLvlgr289m9g2MWgrtnoA8XXI0TR7nRLAErjh2nq+I4mAcW1MvvQCglHiA3r
	 8CfMZF6Q2sAytBKz5mCH/At0LUDYe0aeU/BGoapoj9GZXpornq9Gsv6YrDLSpjFTHJ
	 xr+cyeSTBSE4CmmjolTbQS7Lf+2+EADnkQ/dkg7iHHxmEHcK1eLdgu2NcYj/6MRZu0
	 1aF/cXKZ7tpuFZdFQxOYG74m/dVsqKimfIlOOAaIEmUsWYbFRzUr1b4nnXv7KTq8Kt
	 GPSfi+VNTofuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9335D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695823363.29171.14240895986534481665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3532804bc9130257154235bf6d957de89371a9fecfae7d48263ea48ccf31a0
Date: Sun, 28 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766958233
