Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396B8299937
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780201474; cv=none; b=qNuHwo7as4LHZfbmBvKqD5+nPjt1ah8SlgywaB/HI5QcPfYDRfXw18rodeQvPeZg+iUiL5RsIzcZNUfCGYj59Ov/bgLezMKuHL+XqddHfMlIW6kcipyL4h7l2VxwaRmkkMhkEdeKDxgTJQQAqI7fkZefJHbvSIb3QszSDPTdj/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780201474; c=relaxed/simple;
	bh=37HH/0aRJvLF+oW1+sE22NNjaoleOJ0s6hFcZaBLtVk=;
	h=To:Subject:From:Message-Id:Date; b=H9/rd8ImCaCzO6FVlf8BwJ5mXC3HSl4mpJaerdNwv0hjgKSedfOI2GCYPS+L/M3lqmctuenAk1J85Jjfz7AajLXArrZGZJFnSc+jjcqT4EzXr0OTFvE955GGLiPRN64kSpBxrRANGhJyQB9u+Mrt6JdZtPrKrXXmHspn0C/3rsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLvzCHMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLvzCHMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A53C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780201473;
	bh=37HH/0aRJvLF+oW1+sE22NNjaoleOJ0s6hFcZaBLtVk=;
	h=To:Subject:From:Date:From;
	b=OLvzCHMYt+ASJ0VvTRQmWJL/WIbjNQJZmJrqr0F66UhXKfRZRo3BzargGkEYHC/a3
	 MPeBvytcRomDeXqoufz9SypSeHVK0QmuJphsxj7LldBV2ytYg6fF0+vK1zkh8pTX5p
	 UBsTG8RLk+FAup6xgIHXJcEX6CK/yhDqkXit7TnSGMjj9yKeS4qC04XxOXQgucCmH+
	 GCPoTHDQMO3gkBIkPvTr+giVIbqFuvsfy1K3vtAiGoyfXNj3lhpToBG85y9FqT+FVx
	 pgCNzZETZPr1zhk8TGeVl9S36YRrfEQQTGOkITWD/MK89JJMouRmNs1fwwGqvIcAlK
	 wqoAVHUOl99bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1CDCD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020147370.22299.14439659150667792738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4a9966a37b129f240d1d16862d4c6fff0c1ba4db0f7548b6a76758cf0da875
Date: Sun, 31 May 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780201473
