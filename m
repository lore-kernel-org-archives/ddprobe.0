Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D80D8284B2F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771960493; cv=none; b=oHP7R+GDpwcInBjY5fgsNBeFqjvCq3GVLmWDiMLUFY7XhJb7/f/GQfebLFCjEdF3kf4rUl4YCx00Zz7WBHsJXGkKehXpgtOGi+Vy/BK+rAYgvWplRnjc49UVp1cKxnXTL8USLFPtDQe3NwvfoeO8RS7LSbYPpgd+LhKDraBgVYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771960493; c=relaxed/simple;
	bh=E6MTdzjjNwOGBcb84AB1HGBt3nHLCCgySdCB4YpF5Nc=;
	h=To:Subject:From:Message-Id:Date; b=ox+MUmAB/1Sw6tMpQ2br/aXOoz4DQhWzAqck7WfkTu89pZqYvcAqXDI+IsjVkOrmUkZP+BmFeoOgfu0OpJAw+Tn5uL0KIy1Gc0kKavnmqtDr9mX2ff5jkOImNvzF77NWcohzaGFBLV3Ek6zZ6pWGtz2ovPw4knSrZhtmw4mbyfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDMkbbos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDMkbbos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A792EC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771960493;
	bh=E6MTdzjjNwOGBcb84AB1HGBt3nHLCCgySdCB4YpF5Nc=;
	h=To:Subject:From:Date:From;
	b=hDMkbbosI7rFLqVAwbuPRStFD5/cauLcKbjJ5+YXJjMSdsMihudL11jWx3ofNBpTf
	 ZzJwPQdg9AlZxZgIDmjnpXDhhu2pdU4WwSP0rGUAZqtQEgl+5NDD1ACcHCsn6kK5pl
	 QxNb/sHr/PZSBb/gXEYT1zX+8u3H851+dkbDrYHbzrlsLDZFAZJB7RqJRYT1asvNmX
	 FjA1yi/Ydzl6v1EqsYqlD/5M9Unjum7jJvSThc7Kp5RfC4wzyLA4WVKhnJXkMGYniW
	 pPO/U46CWj0pVSjNxMszn/DL69PmRsWKKqkv8808VKURgFwfUgyDJc1LG6+++rdEJo
	 3SFwLHvr0yuCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951CEF4BB7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196049359.9967.12104275557773466238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e4ffcaab4229b8ebc3887095ad98c9aca7cc380acfd49875e91624fe9bb963
Date: Tue, 24 Feb 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771960493
