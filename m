Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EAF2C1584
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776617854; cv=none; b=itC2A8ZSCheouDGKLD5xAA9sQLjooCq5h+/eyA7KXBNyJkCtbzsDaki6IIAtekI4t1IYeeb46HiONttkTMXOTZR2zR2sksERT2/CZk/UeR1oaIbVFI+9bGgn/jLSJuPRvLko3PE4bqTCCqpwCyPs/FZKfel1rJ7sld2w+ygJOZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776617854; c=relaxed/simple;
	bh=djlsAdrtJTAZ9VfzQ3GIGCi12v6ttw3Lh5H6tnwpLzU=;
	h=To:Subject:From:Message-Id:Date; b=qf8fC3UQyp51LO7Psw5L+Rqhc3AG/xEhB7C7+nSrWwKRCJca5aAXfh3KewlWVSjuLR5l4IeUCkrXxq74QG1A0GTce/OE6Jz6EedypHTNiuLmYUq+BdcDQJuXf1VHTHHURKuG/0Ty6Z04sDC5CHjMtCGwqTCWh7GmCUPUnXeId3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPA9oLRm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPA9oLRm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEE1C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776617853;
	bh=djlsAdrtJTAZ9VfzQ3GIGCi12v6ttw3Lh5H6tnwpLzU=;
	h=To:Subject:From:Date:From;
	b=UPA9oLRmgE3e7pcaVkNvRqpeKKG+GJy+Mj6Rx1kD92WcolklEdXF8nfsSu/jTyRZR
	 wGfF8dmP98SKHpwO+j4atQqA49q90YNYNvUmiuDeiWAjjx5KlkzHzPtITwQZrkOpCP
	 2LuI7BjW12CHwJLHod5J2c2El1N2SmfSMTt5FZPFPxUh5Rq2G9rdvrJiwi5kp6MCIz
	 6Y0eUUe7muk1YmqCK1dgyswp55TYzolWpMR1SLRUe3LMdSkmxXu1vE7IL+Q2L66FK9
	 qmLGrLzhP6S8Vn4NvK8NRfE7206yMZCL+oVMeznbY+P+kot+S6WH6e8uzPDI8lzeB5
	 pDE6NjWP2i1iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB8CEA71A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661785368.2734.17338967909523878389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b059bdd828940506d38eec3265c0ef3cb3797a7910f53074ffb14a7bafe252
Date: Sun, 19 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776617853
