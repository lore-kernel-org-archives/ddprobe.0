Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A002D94BD
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758281394; cv=none; b=KuJaNDW6EKuflZdkTxQ2GmmO0be7fHQBj7kVBInNj6KckNpeVYFatJnGI+9rWVFGKDsRYZGY+YbAEI6IzwO8pyPbF/vQffD7+gnb/5cK0gDnAiAO1G03WCgenuCku61NAjEN15xylad9k+ahm/NM1HJHQwZuGGeROKouRRuSpgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758281394; c=relaxed/simple;
	bh=dAq9aTXQRQ+hSu/Jy1EXBB1foK5M1isbv980VHpRK/Q=;
	h=To:Subject:From:Message-Id:Date; b=CSYmyrfJKTYlzrGtjO6CtG1FbW+qak/TnrgsX+DSdEkGgz3unXRSPEFj4SXMsIBeLWvGDsKt4dmIPp8f3BL6iuEFSLCJafgNhrefY86svywKzQT5U12hTSe+g4tw98rMjMrhnZBymZLYPYIphR0dMy00xYdcEjbivl7MJMOCIxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1xzBNZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1xzBNZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F6DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758281393;
	bh=dAq9aTXQRQ+hSu/Jy1EXBB1foK5M1isbv980VHpRK/Q=;
	h=To:Subject:From:Date:From;
	b=R1xzBNZTVo6oUVq4wevgZQcqM6EwwVVjRtN1FuOUKqUdrIKe+Lk3MCG0T84V9hasD
	 2Uj1h2IDetTm2REQwK8fP3WTX5UXOvNheoIolQ6eljBQ9Qw/BlO0JIOu7wXyZERl73
	 rg4FtvOFKSnhu7u7uvI0NxIxLiATnHunxMA50gsqPSHk91TAcBQTHF3nLubMZc6bA9
	 duA8pVAkJqZuTH6qH8kH0a7Pzd75kNYBUOp47eUjAJU3JeloBkm7UCkv/w2zPrkfOy
	 hk/DnGM3RMF5pzB4sfbOqvewlQNIxwdi+XaBwn9oukYhwNsVVOahmJTTAv3SmX9qgc
	 2h0wZlhwCPYQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95995CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828139360.10513.15119266158833324347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ada828fd847ad3f2befd187306befaa66732ff37b24ca5a726bb9f076de47cb
Date: Fri, 19 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758281393
