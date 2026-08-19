Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5120030F95C
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787166034; cv=none; b=HAVvTPyn0nw3iPeqErlJEoJj7u3C2yn9Ef10A7Sh6Ds1V7jxkrsighceC6WJgQhYrURaieEfKI8Eo/Tnh4Qaw5TISAb8WRX+HtWH2NPWmmS8l7JPWjMDeWn/KzBVm9be5hbVvZcdi2iw238LHPq46D3cPH24eLx3nO/4VjXwxJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787166034; c=relaxed/simple;
	bh=QdS1L+6YMlDaKVuhg+hOa1yCaJ6cdrvnQWxfpTSuATo=;
	h=To:Subject:From:Message-Id:Date; b=fut00XhooH2ozx0HaiwS7zNb0Nw4ImiHM8feu75IJoFzxwOyjg1j9lpCLA1FepgOlWzj8j3M1MNdbe2J/Hfk3vn6uNG+h/p3hh72GFsyKtEMHcO7ZKr/zF3iJcDc4qBPBfGeMYhV6khAynRLCAkE03lNBzxapL/LWaVvR15t0HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNa8HOxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNa8HOxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3452C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787166033;
	bh=QdS1L+6YMlDaKVuhg+hOa1yCaJ6cdrvnQWxfpTSuATo=;
	h=To:Subject:From:Date:From;
	b=iNa8HOxMpPvn4sMfQj+LAUglO/OHx7P6EoLkdQXFVomqd5kOvp/8la4aN8y9h/vja
	 aMu2WYOM5d+0dAan47MI+lrcOtZyGT/AsR7B6lkqIdpnUMUcpeb/oUGs1dQlGeLlLD
	 Lku/JQ3VWfWC5ymhN3hcO1jCTRrNXw4/GWPPVJOkYxg7Wx0M8lUecz5E99gN/aJw9X
	 Q51J2sqM78/YteVxPf6NHtocYWbTgXbq7c1VjRScy7UqaykkioKLs6j0PtLik0Ju/U
	 bboTYWA2q1v/wm04AtS6hd+6aLiKVZkO9fqBCh9t8XxV3VIhxC1L80VfwvJ7nboWH4
	 Q4bchKqZqUEMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C3C5DF85
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178716603369.23610.17589088274761635993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757a6977b2316c9fb19ec15d14ce182bc178c3be54500bc94d7c642204c42592
Date: Wed, 19 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787166033
