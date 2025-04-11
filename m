Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078EF1EDA05
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744399194; cv=none; b=ioRqlmwvMxYrHJVClL9GuAYavnwJFZBzegx/SkOXXQtnj53MTyZ11sc812ZgA0Nouza8aaXg/DGv6jVubB4egjstSFqkqwMaB0xWxKvs0cXIuo5Q7LEC9Wz5eMthxZfDuPeckqxTJ0hUrAHSoQgvT8OrQlzYnudu6hKiIcqj9eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744399194; c=relaxed/simple;
	bh=xS7DDo+gF+xeKqMUQXSQFtsPLyLCbKWoFK5jW2U+hgw=;
	h=To:Subject:From:Message-Id:Date; b=mW7WG+H9bx0S1WHPWGP1Y5rXk2hv+/hP2zhd6JTfi+hZeix2BY1sOvgQPwi+RNRcMJkaWlZB/bSinRuNQQDCtdLhkFBWRoy3/ihp44tTsgz0Xx31vzEG2vxJLwjMJzU3ep/dR1WiWGMgMrD1HeZzpQDdGOfGAJqJyNrPTdPq4eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXWqqkhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXWqqkhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1405C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744399193;
	bh=xS7DDo+gF+xeKqMUQXSQFtsPLyLCbKWoFK5jW2U+hgw=;
	h=To:Subject:From:Date:From;
	b=BXWqqkhFrMuKviJt/Reshp9pFYLaHtrH2poorZYIbSFBVu/mwnLdl292hOWO1LT5H
	 z/pGE13ZSZFPAOlkGCpg3mT9JPgQE+T/PjbLrdpnTHJ6O1funi+d0OVaweWUcMCKBB
	 0wrdqEz+1ahYXS91nHoAFElwuZNPYH/phfm5PGD3cWHfq0evTeoSDK9dyTxaZMVwE7
	 mFURKdKxVV0HFnykDMdguY2nPWcBrHWGKkr4UG1mHtIJWTmDz4esZVmAyKgG8FPWgd
	 s9/E91aMyZfm0VOkm/A+42M4gqtnjF2yaRpVBJgFsJYPH17/TZIcYFt2G1dpufYIYF
	 FcvGuqR1Mx6Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DA6C369B1
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439919364.14272.12067180455868124556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e76f10b8ea912b38fcf8ddcb024028e95dacd64841478f91fd00638ea9b6517
Date: Fri, 11 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744399193
