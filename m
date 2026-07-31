Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC0736605E
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785534634; cv=none; b=mWtRoCE6sNPpwPP0H042UEd3mYVHrckJpi9okzNyW5PQqxzA50qpIcPTHpwlsKszUoys2QnbcexuutCI60l7jYRHQicu/aak9mX5svNnEzQ8n0JuL+cXIAKe5JJHg93SanSSHl4V5Uerl9AZKLU/f23Ua0/+4OHs3AZmKecZOCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785534634; c=relaxed/simple;
	bh=zOepga4vA8bb/WTHrBzv2VhrFDdnlOt4Y7ys+R8mpjY=;
	h=To:Subject:From:Message-Id:Date; b=IUNjzyJ6m4ihXnxrEE7zE0WGz5w5YBl5pQX7qEPU5mPPhTJSBGJx++Oo32rkt7uT2zf3IdB9kXZZlwzVN4XPIPUPIDO+cC3MCqFU2qpC6MOJF94hjLjhunw11EioZLLsMMZFpQavgE9GxKWwFUy+5YIuqf7UCvNVQtY95mBzg2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyFJctAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyFJctAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF9EC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785534633;
	bh=zOepga4vA8bb/WTHrBzv2VhrFDdnlOt4Y7ys+R8mpjY=;
	h=To:Subject:From:Date:From;
	b=OyFJctAfq91lzPtC56g4YSOjThq6sq4p7thtsdO/8FCIu/IcpuRruRIdTWvYaHQYq
	 EC3nlzzzcYEy8N08Hi3eOI0rRRvnkrAXfUBiEuXx2A8jnuWmwBMLKFWFDmTyQda8q0
	 1a7rlJeQn5s21GnCoIBQqS+Hpw7HQfSDHNQ8fNxHBoMt02rdmKmDwiBa4bRqIuSrft
	 CWzG9cdHjWT2Fg7ngTq3DPnSG46U/98dXPh+Uc0hk3wBJ5GCDdzuFuKVwlUFnqLy5D
	 zvPUW+okA6wxHn26oC0hjpwuuHXGqv9qwYJATLlJNLvuG3cN2Z2E2YDqYzZ9Qh3zbr
	 rB776bGo566MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8883C55172
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553463368.1928.5203624224197971096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932aa5faefef990f6e80621ca81952335316c365ea38be4864250c43f83b2fa0
Date: Fri, 31 Jul 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785534633
