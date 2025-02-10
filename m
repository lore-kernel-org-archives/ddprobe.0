Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C13B1F8BBD
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739199354; cv=none; b=fj3mYT0MxwfOC8sHbsOKc9OOn/A+4OVRNyTAE8cS/DNZs8YFw6qjKbhQaKFb2/HmIJWlMePC+JZh4uKKjwY9ifeHI0bohCXA3+iexG9/OU4SubJQMtC3i6b8wP1UvdRDZBnRJvcvWOb9hzzbmHyIElK3SBeJmfi0ohnsQx8bgqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739199354; c=relaxed/simple;
	bh=wcXH1MaGeH6Gw07nvJ1yBZDgs5igTnbqUlDdPh/u5rM=;
	h=To:Subject:From:Message-Id:Date; b=Yjvg+86tdqDzSe3eLV/gpAOqWpNosfg8mr9uIbWQiG9y6duBB1Nmp3sckmIE/p29Lmx/9gWvaFcjtJ6wicwjlckM1Gju32fYRuumYdy6GqMkVjtXixN/yj92oGi9xn+6OC7ZX1R14Xrnl8GtHHvKTmACiCVRzCHooQeHE9gnqJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccoe3hW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccoe3hW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C26C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739199353;
	bh=wcXH1MaGeH6Gw07nvJ1yBZDgs5igTnbqUlDdPh/u5rM=;
	h=To:Subject:From:Date:From;
	b=ccoe3hW24nMWPbKHEIiPAkh8DiqCglqW3ZP5zyJx2BHT/fPEz4K5VrQagNV37vCvy
	 V0XJHUaWA1/DkCvg79ZCTwLevNgSQbmbETGrLjwMyyqX2mg2Tr7pGl0czh3Kmhv7Yc
	 aDFiz/5bFvl6/uTpJx6JWeMvIhJE7Grbyc4ZSKUTemkSinLUqdDQtTU1G6kbHaXL95
	 y6CQ4L1V4Otn2c2uTStyPcQZNfixZ+FiX0kJuK9YF8aT4+L6btDJAO1cFCuqBCg7Vx
	 0HE04RqtLZaYSqHePsi2WgN7ymH1RYGlahovkBWr8Gnhyi6an8qkTYhAntqhcP8f+1
	 5ZF8fAbSuyAPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2959C0219B
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173919935371.27615.14145748365830648942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f484941d4d954cbea5065ed44f30bcdc4d8fa92ef0b3a47d4ca7d4b538b50f46
Date: Mon, 10 Feb 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739199353
