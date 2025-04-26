Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351211917FB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745690995; cv=none; b=VYYmzpYqyXIZRx0R1ALcE0oOAKy+kkNEaQw6hoaYdHCc72V/aN0xlJeNrYzzvkwqtFJ/cHEFMF6AiVz/92obcz9UY8LeMtd9rSldTzHorz0wnvFbifZsLiWpNiKLDYvUDjeMIAMbKXKbDXrzdVj6PX1Xi/8mmUKG4Lg9hjmj37s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745690995; c=relaxed/simple;
	bh=EbgyVa3HySLTzFWjX08xWGarDV095s/Ru88UfSvc1Us=;
	h=To:Subject:From:Message-Id:Date; b=F/D1+ktTGxpm5o7UJV/JoquBL2RsH7tw/1EExbOKWjf9rtI1Xo1pn1u6i5TCm/vp7oL2f9VpchzQ4gZueNbcGGkJSczIGhMggWr5R1vCwptj/lnltblU8wQf5vbpAwHSApDRuwSvt4etV2MvI74DsHgtJj0bJGtbI8wY3Dqku4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgO4sWjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgO4sWjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29B5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745690993;
	bh=EbgyVa3HySLTzFWjX08xWGarDV095s/Ru88UfSvc1Us=;
	h=To:Subject:From:Date:From;
	b=tgO4sWjkhRFjN/oMu6cgzEUqDpFJxLrRpjJboK9yyRTdvUuT87D3djTVdLXrLvbZt
	 z3qZiDOedx8Z6VgTlVgnlIobFuWrtxv+kpCy7WxX5SUmFMGkg8PtnuFlc46umNR1Bq
	 Fa9O5NUjFYRi4XOT9huoGwsoR9uMyjVaS1c8ndg8asGm2PC9BwxkrMVI6nTGry0dzc
	 Cg6tbLEWjKnarSA7X1N6krZySQSQ57k5HtgQUdNw5GenrzZF0hqU7eirAa05Bfyq2C
	 tJhHrqyXXeVK2smtKa49WCIyesIU1AXedQYKb0OzO4P22feJPS6G1t34DfyDzhl3Jv
	 CpHamN1fac0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E532C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569099357.2667.9663692401348471389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7768e63149f1379e433eb1f497f04023ac15e496343993991db26cfb927d34e
Date: Sat, 26 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745690993
