Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F93617B506
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771135494; cv=none; b=LJ6dADeBNjrkVrIKnUOc/kc7Y+yisCkQfbZQFPp1KZPlkWdcRK8z0k5c4+Gsw89Yij99An8Euq4uGlyI0K8jUSsOGwZ6m+yU57aB/HCfcPix2soIIJ2IWIpp5iVvAPJMtCgRQkO6sKiwdftwM3FSr1Ggj9v8aCl+3SWZx6sVzJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771135494; c=relaxed/simple;
	bh=7rvJfrOx+lxbdSS5jaYX8rb/t6wSRurMKgVXqENE7Xk=;
	h=To:Subject:From:Message-Id:Date; b=e0+VeSgPXh3W8w26Lo58JRGK5Fdq0hjYgw8XrBqHy+kJJBBaHrohtuPtn/77r6RSt6P9OpKLCegMuv904/inFlp1vMY2vjBQTwxan4UiLoMKv54BfnIU9XtyEjN5pdWmD8RhqjegRDd9hcfLKbw9ldPXUyEWomTzGdkUDBssg4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hA5xNHBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hA5xNHBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFED7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771135493;
	bh=7rvJfrOx+lxbdSS5jaYX8rb/t6wSRurMKgVXqENE7Xk=;
	h=To:Subject:From:Date:From;
	b=hA5xNHBHxKnr9T4ZngSoyomUpTVVvF//08epercyp+kA+jnbk9/qtA7SAXandtgQr
	 RmELsrB3cIfI6t/uRqRNalcGUzYzBtQF6QcZqrAmbK8WZk8qBOoBo8L1BOsENEyW0g
	 5GFDfTcNf5Jd1Try/4grkyRPcFHFERaCEfAAKgsGuDShI8A8LvFKiAAsc2QlXuLHd8
	 NLFiicOf8UDBCR+PzpXdtjhvyu/S1T39gCsODJuxD1UXlNpF65DUkUyjjMn6jsV7A7
	 wcJA1F93pbg0CqMg1/h4ulUGqMOiiY+kQQOuKtSIs/E1C4Gz2JsVhSo6iXNNCONnyb
	 yJzuaW1CQQhCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDA6EF5868
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113549359.18396.6183146017072429685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79dbc890535846b6402855a6c703b0de17bb743318166cd148ca7de9ab945ed
Date: Sun, 15 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771135493
