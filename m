Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC762F3E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749413993; cv=none; b=U4bjnaT0SlxSLJ7sMSnUmpjwNi8GAdFP5MN7Tx6Ns6YYzC0ayUTi6vLJEydUa4uVgMAZSsI+R4L+s9XHZiIN4k1jp/PAXKlV0BkB9MY+v0izAZ9TVUJdNnFF5fbQdB8/8H1dgHOFUxRv6xDxtXcim/nuqkzK0jEoChJjQMSH144=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749413993; c=relaxed/simple;
	bh=hDgpxtsdChw+StyfSLbKKCDt5y4YYTlcpJPBULvqEWY=;
	h=To:Subject:From:Message-Id:Date; b=FccvVZYImyd1jGIe204LI3g/AkGjZH/D1Qui5bQ9yiIivaZR1jRkBmo6uQmG9nDtLaxW4y1o4stlQNmq3YOU9OhzQTe0zIrLdwlmCyp/oqIyou8AIQ4QNP7/h1c4F0Pw8z19sxRPAYbNxATBcp/GMiyN7kGsEvyFVyJq0DL0hmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4cala6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4cala6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF14C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749413993;
	bh=hDgpxtsdChw+StyfSLbKKCDt5y4YYTlcpJPBULvqEWY=;
	h=To:Subject:From:Date:From;
	b=f4cala6jdxuaoTdUQ5wlybSFxJ2hf9rsBiIGQbEEM4UJUFFElhTtKwy8JdSl7UCFH
	 WOOBhuOhyFIRYrEBIJOBZMbMGvYo1ZitVQNZ1Idv+JM3U2KgZwZjUOBP4/CpM4hgp1
	 f2GBL4GdLKsc7W42BfJjkydsDrq5buhj0mEDYL+hr5xYGuOlMpEuD2LaHNtYAbBxdz
	 TU0sArPjRrvOkLjDApukF4v5af2ESBUPxav+Y4/c0spGypXoxQVrzVqVqvIemzxO76
	 BeNu10J7LdtsAOBYx/cqOWgzFIu4fU6dk2X00Ftq3acCnrylwCeWAibTtxCkX9I2l/
	 Q+a/i9h1Whk8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E64CC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941399357.10999.14307120100692557173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e0a7338b3e8c3445479236c2bdebe370f89d7824dd43675ba278f648517b5e
Date: Sun, 08 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749413993
