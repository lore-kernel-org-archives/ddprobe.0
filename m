Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3020D42077
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728281754; cv=none; b=KXnncDTGnznAqzGaeIh2lbz/l/y6o03goTqPXwurZt9l2cLY49sASFL7s1usHpkN7uF3yS4UhU0locE2F/AL3XhRUKh/pbXpKLwU+uonKXqg64B7Bmk8fUELR2P0FrVFlKzZFpAuqgfa24nC8wlQZmKgGBkxlHS1EBBZaFZ1TTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728281754; c=relaxed/simple;
	bh=h6pP20X4NhAbmBO8OcxyytTjkfR18vAwcaot52b0V5k=;
	h=To:Subject:From:Message-Id:Date; b=N4xh3wRBZmRfYfglxkP/eYbvBslsQH48z/3S6VVcgLgToHusVZoKk8rcHfY2NhtjTBKbZNTtr8giZiHi/nTno06jyeSQEpkj3VIgB9ZhXFZv7+lmkRPOs2QYJlKqj+SMrMRtSfUW46frOAxCLrk2w5Rwx9L/VqFyZ8sNc3TJVEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4+3NKAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4+3NKAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C03C4CEC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728281753;
	bh=h6pP20X4NhAbmBO8OcxyytTjkfR18vAwcaot52b0V5k=;
	h=To:Subject:From:Date:From;
	b=k4+3NKAdPIvn04gLCMHcg5pBkxDGK5UAN18dA2B6udveCbZldIpTk8eT5mxZxdP1W
	 CcxIaFMglpXfMjz3Kz3lkXyJWqGuDys8Zzkbzt3IoyerRRw3SEfYphx2qrUYxJIgEP
	 irPqXu2KBX6T8/4aw7KHypz/VE1icW2dHlBR5fjsY0IHL7x4Onhgtmb29L2eQ21Fuv
	 XwdeOWFRrexzvWvg0Qz6YHqV//O7kT9qnuQotXEID7YQIfSa+JeGqf2yvFNIIQU4rn
	 LNbr5imhUn5bRtCHyrmLU5agw3FKqV2MxRuO/2gnIXPmznFxt8kughKYPby+VUfY5o
	 ROu36Iy9FRgkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E61CFB442
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828175361.354.10708195992333409835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be45fb936168f95097fb605df916d4c49961f6b7827bc4c0ca19879f20da1065
Date: Mon, 07 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728281753
