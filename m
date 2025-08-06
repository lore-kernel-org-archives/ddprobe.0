Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268AD433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754476794; cv=none; b=Yzlwr+LYoVOHoHlc3gT3lquxD5dEjZL/OIVRx6Ii6xgHCLwYVm1kr2fC7kEpFOOh1eLYcA2sDTUv/SJRrSUyT05ykut3g0xjkQku7T1JTooTVWy4HECrHYyE6uAW617cJVYVbgZ3K+Dc/pNchCZSd4wvIIysOOPxX9MF+rqKMqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754476794; c=relaxed/simple;
	bh=XyHQMGiiIthAyL0UJ9zo2XmMc9wYeHK69/il/uwd3MY=;
	h=To:Subject:From:Message-Id:Date; b=cYJuAtywxvwsVK29n6rgoom4HTS8bW2nue3m+4PQsCFoNjyQzfMDAQ/rpIoBcguqkTqOil1TtvniSmt24Rcts5WuvngEWGlV1qt1tYVOTeMZD3P7Yx4n/i59K74rlfe7kVXmE/UqeJk3HHtFe6kGG+g5IofnwfL2csL/0tX23+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hejq0Dhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hejq0Dhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BE9C4CEF6
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754476793;
	bh=XyHQMGiiIthAyL0UJ9zo2XmMc9wYeHK69/il/uwd3MY=;
	h=To:Subject:From:Date:From;
	b=hejq0DhqFOOCFMn/9Z+5z+AhcxtbnveJb42LTGYkZKi5jmZX2gW0N7uUuI5OPwToL
	 j32AjlAZYyfb3Aly7lFhX6EnDyEE7g/05ZcQ7Mf7xFUJZ99R1WGJsRA3RuaaotPal6
	 p8ZItRIv5jAtHv2/bVnl3YJJC1yUluNeOr9DgPLDnsBmxe3yJjSfF6wEb9Ms6SAjb2
	 aqBpOjcvrkROVZN4NAFGWLnjyWzx15lGXSkUB1L4czd5bOIgdxbakvJTM3yv4q1wh0
	 1w6OOD9YOnLhVSf4T6Y8o1C07IvCTUxwXm44OHOqAGR5mN5ftcFa8+TOHObZwjt27K
	 +iKR+6AwfFONg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC9EC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447679357.25622.11051918674818713755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c508f28e97a67ed8b8650f27e2fa00796e313e7b270c08a2e9b7273e370a8ad
Date: Wed, 06 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754476793
