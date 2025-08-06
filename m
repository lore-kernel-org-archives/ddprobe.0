Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CAE192D8A
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754447394; cv=none; b=PGIrXVhsQDCMl69MdSUYkpbDDuLBr7X3V3nMWv6WatqptdsqVzSUOV0IltOR8CaeRj5Zdf5jlXKu0zNCWckYqGME4yH5XVbQsOn/tJuDs5bBeKYWRXwWcCaCjRkl7HayUY7f1zXiTygiX3lH9UXZKBq1OKgA55AAlYU93xkd1uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754447394; c=relaxed/simple;
	bh=PU/W+y8bElT69Xh4BFQbBsnlxFz3D2xqcHXGlieVKfI=;
	h=To:Subject:From:Message-Id:Date; b=ZkHosdSO/4cBJGOGdJ24AIPimfpYslioTn/tlnlr2cqZOQs7WWWpqXreyBnYGhb68zWWCvXsO/otGh4XZq8J0nnNwBNZV1TzNMLJ9aS6nRtQdF8n1jfQAvDl8Jer6g7YEVd9A3k5q5v34Zqy8MWBNTvMTCCQLm3HQEnJkaPcnm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkXa0qYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkXa0qYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E12FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754447393;
	bh=PU/W+y8bElT69Xh4BFQbBsnlxFz3D2xqcHXGlieVKfI=;
	h=To:Subject:From:Date:From;
	b=OkXa0qYS4Ah97ACCwejCzzehJ1gGqWIjgom8lnEi/78re8WwJ1Oo7bHeOk8D2cPWk
	 uaWox5+1+BkxtF4k0y9H32WS655dZviJCaqBxoKfiwcM6Rk5/qZ994ZNwUlUkJyhaT
	 sSnoPDmnJ9kJMqIlxXeTXdYjx4CJnqwjE/3ogj1H/2Tefl4vwaa0JkTEZgT30Fi3vO
	 zIyTP3pop5XHLBbgeuqLCXcsP32iWpu9qBQORw4QhBP4b7yotT0+DRiXsVMUX0hGVS
	 95KL5G5r/jDBO0ab0MWMmV3B+nrYo6EbGt/YLN2biqtaTv7BiyOw/+wmRjgty9xWeh
	 any31wlDIEG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A3C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444739357.5243.7786282923188279824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939f27894c761162ff9149c088aecafd3315d455f1f1580c2dc03134adb42fe5
Date: Wed, 06 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754447393
