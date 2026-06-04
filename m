Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC9C31ED93
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780587874; cv=none; b=rp2K5IZF+aYFaxerifb99it6kOiO9IqxCnOU5wZ7N6HCrITYOh1TYQZQvhXlpNY+nzzQEth/WoRMZhk/vvQ74O/UOPKgNC6j6PPxOmn7wiquoQpQJIGg3IEW5VVHA2nIZZ4lzCukRwd2zkvtzYniuJFG/Z5M1rn4i98dBC5BWnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780587874; c=relaxed/simple;
	bh=hd7sy0C9BNizsgGwogu3Wfx2KFuACNIShZpZ+4VawiU=;
	h=To:Subject:From:Message-Id:Date; b=RowOSvNzX7r8ldC6ZSr6F3jRxcQqSjHcfY4k8as457mJEWM+hd7zFT+OFGAFe1EEFlyFTLgj7T+gP0CWeBtMnp3WDhQuGuVCMFzTkmxuSPp190tmdozRCPFbzR1nlE7FZzSKuNqbcSP1nyIyVGVFztVCyAf4tivHYqlH/u+GLL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKRoFLX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKRoFLX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95DBC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780587873;
	bh=hd7sy0C9BNizsgGwogu3Wfx2KFuACNIShZpZ+4VawiU=;
	h=To:Subject:From:Date:From;
	b=PKRoFLX1Hib/e6QeWD2oRkoGcGs+AHy8VGgNPH//c1yO3XlIFTIzW4yG8XOVr1/uG
	 zXwvtbm+0Fd//m7xe/qKNjYws8LLlP5hgukdw+QUb8F1eI4CxkyQLm0AMmX7gTkQ/B
	 d9+Ao3wVI5F/Ray3HxTHyStMTuARlYpb7GtAG9wzyTlA5Veba8APdnvxvUYhXwhh2i
	 YaPDPeurwkF2V4F4i7ewVCDD5HScZhp/eZ9/3zdTHJWdsOu9h/P/F0Uxj/R1Tdzcf3
	 JCN/5SQGndGeKBJ/WD+/BZajn+3OscWC73Msbh63HGji0tEbYGQNZEgJ8thb2l5Stu
	 0jDGlRp4JlyJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F8DCD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058787368.14310.11652003908464079031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da36b65d257594381a100bc0f70d8867c84b800974cdfcd7751ab986ddab12cc
Date: Thu, 04 Jun 2026 15:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780587873
