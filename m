Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8411EBA1E
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745312394; cv=none; b=ruZCVJjuw6oUUYN2HFsUeIgzKUnzYTO5VO3mFwnG1NtLQi5cxdlOSJajxUV7E0O94wfRvx2qWbbjnJk/HVLnLR5eZio4tRkimMtbR8bl56HiC5L5TStK8yQvDp7EI5G0MwXtuu0cn3lp/PoQ431a6eyIqLR1OoJgnNdpHEL0XTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745312394; c=relaxed/simple;
	bh=A9wVrR6EfkEWF6UmB1t+dEHz6w/ynQXTEJznb8GVtwI=;
	h=To:Subject:From:Message-Id:Date; b=UNFpV9ckXvRWqjmKlo3iqPb+7Bc8ZcE70Ylc5MmW/kfjDbZO00+YTNlL2KKxHLFoKeTzDKqPxAkkzKslMRXVPyicF5DjnjX4b2qSOUQ3DrUAEmFc5NUKSYBmp7TuXNHcZegolq69VweSB5ClSD0D1WaoKWVScvyYl4NTNfUrgSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxfjSDTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxfjSDTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7F8C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745312393;
	bh=A9wVrR6EfkEWF6UmB1t+dEHz6w/ynQXTEJznb8GVtwI=;
	h=To:Subject:From:Date:From;
	b=RxfjSDTwq3V7Xrajr3hqhaEa2eEhhupKwNNi/cvdKpKapByZhgrPmDcY1R95zaIKL
	 W37I3TzaXbzll5gyse85VPZHIJ3na+nLyf4ZN1jjeIlrrCNj7+IZNXNrlg7ZpmrIjX
	 0f8txngF6qa7bZBsia3zpHt/PxpSPKAGpyZQY9p0Iya/PIUo5cLmgDdCajHlhTI0yq
	 xAWbr/kJ9HWauE/hEOcLL49a7h5+GUqbm88q5tXrM9Y+TGegEE9EkBscujTiEF/wui
	 IUYW2FwRytxSqGqV85Hjw3SsN+WtCR9O9s3v6nY9c77+T3FZpdJ7NA7Av5smo4pUgy
	 cIKc6YHCVsSrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1ECC369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531239362.9387.8640980714120614046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd734a02953282a389cf244727deee96a72b584b707492fc2941cdd6343aafb4
Date: Tue, 22 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745312393
