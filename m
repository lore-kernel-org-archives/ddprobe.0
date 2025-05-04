Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EC415350B
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746359994; cv=none; b=to7kVEHmczoNdHPsHjJ+q0mV1OIVm7QEYBGsGlvQvz3cN0w6ryGeM+CjMjLTlXW/EBefDCEIygKegDsHS4uXt7JWmEW1v5ZK/LBa9H15icjRrCNYeNBfRWfGXjXu9DWsOnXMtJPmsSuLDPeWjQ04wJNOWVsuL1PitK9rRlps9EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746359994; c=relaxed/simple;
	bh=SlrJJIi0kMQcB6NRDa8nCwWfE7/M3x541gagkI9QqPo=;
	h=To:Subject:From:Message-Id:Date; b=RO4ZfYzGIGmp4kVP7BLwGqLwmlQb5VwQ6pbtMI9+nTEF3DdCoHAHZ1v1asZYCvZVv4kShcLiMeBimRTyLnAAuNfSXsQ8aU8AXeNqbI+8UHlUeCALsn7o/nP6hy7TtlxdZR2xnd3+C/YFVB8DcJ+DTSyLzeXjpyGANkPogcAx5JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QypJ41kS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QypJ41kS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46BFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746359993;
	bh=SlrJJIi0kMQcB6NRDa8nCwWfE7/M3x541gagkI9QqPo=;
	h=To:Subject:From:Date:From;
	b=QypJ41kSn/0Oi5qS/nXXq0fgQ1A+5tU0c2cszVEKpT+R6e6wKsXTH1S/5BReeDSnl
	 Vc9RwyVjNgD1//6TypSOPVEg3RjFDjLkhk3BUotZT/W5AwMnRAoCgBkTRpDHLGdZmM
	 XG5EA+i/fMcG4a+OVkkCYm262rOhDk98elbfIuYpLi/o82YevwUo1+U6TLyQURa4iu
	 X0ySjfw7KNKkvdTpaRDdHfFwhM3xt6HlGNNxfWWycTkrHgHa60BdPrraa1pUMLhYTF
	 pYu6YaFjMFhCSH9b+YUnYNNX9ramYxB7puoiLEN2vDSz4i3iFrAXUiIEqY0o0++92C
	 dYI9nSz7YgBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93455C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635999357.9798.18250101118820626713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c489a96244fe2563845edb477c6ee68b1486928ee69fdd61836abaaa1393f8c4
Date: Sun, 04 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746359993
