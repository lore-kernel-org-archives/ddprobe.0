Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F4D314D16
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779948754; cv=none; b=Ezh2q51DqR2yTkCfcsB+CCcd0ng3pi9W3HNFlb96It9XXnF21L4TC8LQA2oCXSYLtjyndkFcVhBmm86+y6MzevvlHR0r9+Zip8KxG5X8ykc1MPr1clrcjF6Z90IKrM4KKqy5QDVoFddjbtc5wQ6ZvTmv2dx866Mq/6wCjNAW21o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779948754; c=relaxed/simple;
	bh=mago3L4st87tPNfuLDJAeDdON/po2av3W8PbQN7c0S4=;
	h=To:Subject:From:Message-Id:Date; b=KyKAi2MN1HSSVwcUAri5/N3Ci+5yjx4u/dHeqSzfNC6TmODzgVotuKmj+wGzg2sa1uXgllmlv0Y/PRdiXjgqx5ijx/l7i/Z4v5myT5OkdNw7yjRAoXbEbg7bWjlim+pMCaZWgGCYJz5wuJPKvXAtMNof/npA0J4sKI+jZ1l9Bfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXMCSF5t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXMCSF5t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DECC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779948753;
	bh=mago3L4st87tPNfuLDJAeDdON/po2av3W8PbQN7c0S4=;
	h=To:Subject:From:Date:From;
	b=XXMCSF5t+X5NrojH3+sQussYGG8jpQBNmD+n+5wkDtdn4Qgn99cfc9mCTeLUfB7Ob
	 ShgCvYpu9HTox1bhoAzpX2//eBuxiQYcZOOmkFfqsyCP1UlLvhE0tE1xOOjh3HX968
	 DDZnMf+C4DaMYw4Z53VVZl4NmGU1UkYWZWI+IvGXy7GrpFm0b1Pjxg70YbfCPHKT37
	 ZRUTIibuzfIvSDrXDhy+qwKyBwHO7sPi1JOU3uPj9dLtRYL+MPr3Dup69xBVQ2pV9y
	 Qc7oKjmC4Z8j470SfZCYXssxM3+T6/So0iRNo1TqXivJzn9ibFxUBsO5O2Rktz/VOR
	 R4S6/TeEa8Jtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF44CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994875370.8133.1113850698721721996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a5b5940309c22e8120aaad79f396c7347e4d84f1e8c09dbb7c2c169fb3dad9
Date: Thu, 28 May 2026 06:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779948753
