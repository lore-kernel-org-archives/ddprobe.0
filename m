Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672A934A76D
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768883634; cv=none; b=iJCqtH7Rb5GC3ODdHNvvLkfoqjmdg0HuvAv+KF01kDV78u19EQkwbYhaXIdkCu3zeNOt1T9xqbXUFprYRxYkB/BJ8pkSGy8Kw4kSVty5Tq6+oe7GDsBoNGZs+s6WCMRl2Cu+I7AkHJQ4JE83Yw8t24spHqMx5ymwbiprI6ArHCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768883634; c=relaxed/simple;
	bh=rGtwhZoRo1DryRViqH/25Z7JpphKwu1D5MrHRrJffPE=;
	h=To:Subject:From:Message-Id:Date; b=ECT5HQ02v7B57JUeuv474HujpG4/FpfdXJ9DrdODS0C8wO4u/UC4KLCxn+Rnq8GQLqlU7atj5jb6wl0zLLrJn5DZZVwlGLUed7UtL5liiVkwvGM310QT+FSbJWyT7ri6yioqe1qDjwo/H3xCWEY5mnPKMnSQbv+AMUdtFB3ZdMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gw56XHUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gw56XHUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC9AC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768883633;
	bh=rGtwhZoRo1DryRViqH/25Z7JpphKwu1D5MrHRrJffPE=;
	h=To:Subject:From:Date:From;
	b=Gw56XHUCRqwgAkPfS9XngkHtVQVrYIhk03YN7i36ujZFANQaS7IGnkMwz1u6ph1Dj
	 vXFXjm+ec93q+8MPOBJV6VbhDTHxjHQ9coWQwR2pnf5J1XojM/mAFSdklQSOCUVsjm
	 90ai0dvzHZbKwBzoUQTVaGkTAfVB78UOJDEJkkdV2Z29uV+ahP7GWNhjMr0Fn7ljCs
	 5YO24ASGTGzyt0gktuhfT9JNM+GtamqvBjZTqkS7CWNxmEoxWAv1bAXLQvg9cCNfJS
	 9GGfwUfouom7SsOa9BU89/WmOPUHq8RqhSyosONGoe/WHEvkPlIz9njg2PqWwukeif
	 LY2KotHipH2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FE4D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888363359.3131.14601259422138882821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d43ced448413172e19db02b11123863fb45332dd669ebae3754631f883989e7
Date: Tue, 20 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768883633
