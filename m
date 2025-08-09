Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1A71C2324
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754783994; cv=none; b=A1ixOCVIehDNqp0fbxgrCicmYsdpBGON4ztCcEPf1nInoL0/Jyo+vWmOwdQTcB8weAvpaUy9lZUk30yGz/mkqj3h+i9PNz+Ly0h6Fqs/wU3faN1cd+hKZ4THgj6fn4gl7OVpDTOJfxkh7cnyyxKEwDPXPxN8BG1BPP5cAAgNag4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754783994; c=relaxed/simple;
	bh=nBEE1D5ZxTYcqKMVur5WkrZfF4qCp/thzykIFavFzgQ=;
	h=To:Subject:From:Message-Id:Date; b=m+bKaOjA24g15b0RKg5cQE7O+u5GvIhIlvrQ9Jo6BJoCjTOeyEn+5xpcyx8bjtc6voSyuInz5M/qbr37KDd9BADa/FdNUhmrlCPyQsgfmmvMpBDeu6rWfaePZZ+ejtOL2KZik0MD/7nwEfJG+ZSC5exNkUaBVlzqraj0ir/GyOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qc4/uG30; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qc4/uG30"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6476C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754783993;
	bh=nBEE1D5ZxTYcqKMVur5WkrZfF4qCp/thzykIFavFzgQ=;
	h=To:Subject:From:Date:From;
	b=Qc4/uG30XOdsaR67Rb8nStHp+fz5WPeDbAqHyThib7zzR5PBgDSJM9aoFdXGqS/GB
	 h6ezQAaJu4BHbnKM8CVTs3LiVj5m9mMCGxmsZ2SfjuXSXcY7RuSt11yWjz55ax+kq+
	 BNs+E/2L+Ew6/3mjxMGsR7jabyPjvHplgcjPWAY3zHlCcidABnrgb5RY+xe6PYq8HM
	 aCg8DPqoBnQqV3HCvcHdgrvuhSIqI38yKbNtUZV1XdXVZRvGpI3y1IZeGXD70OpFcE
	 4EQGAGqfCvnRWcaW+hBEuMcri2i1qpUC+QilMe9TNTP4bKisihQwuhkxUE5CbvxcQd
	 Tp02YqY24L3Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFDC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478399357.21243.17051905912074067960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b429a77857622a6a5245f44fa9f2925fe390ab3cbef86c88e31888bc4689bc89
Date: Sat, 09 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754783993
