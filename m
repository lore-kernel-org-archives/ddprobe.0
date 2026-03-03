Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BA62C9D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772517894; cv=none; b=V+dAAuOJiFUUNlPWsFBxuTIqhB6YKANoY1cN3eK/nMHFuFkd8B753LoIgH0+EMmr34FdhBnCyldkxBiYa/pSOMFuu/Ch9V6v7wA8T+/Ofs/T99lNoJQAVTb5Tvn1TjYwhdjbSEQvnCwn+2lo0co47DbJ4q//PoTQRBoQm81RDvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772517894; c=relaxed/simple;
	bh=VOlNZi7ZOka1DxHMfLx+hn73ejRgTgqQeORXSklmHm4=;
	h=To:Subject:From:Message-Id:Date; b=n1hD1hx15uvZJdEQYMNmpsxK/gg7g7NGSGyxSUDIjhkdmlwskJwsWhVrqcttkR0XGDyZ1aLXkWl4e5NC1qGJ7DKIuypAnksD9LvrBiKGmxWzrfK6RwXgxJEecErbnv7USLD9fg5fLi6/EsW54bkiyy65p6RI+mKbjc66StN5/3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gX+XmGKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gX+XmGKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AD8C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772517893;
	bh=VOlNZi7ZOka1DxHMfLx+hn73ejRgTgqQeORXSklmHm4=;
	h=To:Subject:From:Date:From;
	b=gX+XmGKOoISnAXZOOJxEgkFiKKHvU2ETyjxvVcyeU5mdJz1QsmjoVmK33a8UVmb5s
	 8dVeZHfAZx7Isi4jaPzRsoBGDUlPf9vJyJxeLKJ+9ZFK+5INV+AkPwRPI3+3ucB5hS
	 A4i1JKwhpH7LQIse/DBURQRc9xlzMr9LIiCXtm79GcmZLqxF1hx/xXkRRqzKByLnYJ
	 eaG7EvIxsn4WMSBquRZQm57fOftlsuBcfcSrGrYqlMB4QlbWKCEJdOrXs228JNEZrF
	 EiZ+mBuZEKA5LzeGsJ03oTy0dnN0kqVNz6cUWRhfSqXOlH4vgKYEDXOcBLJoYjOke3
	 w5b1hsy1NLqpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A60E67A69
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251789367.28076.11633249651922354715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94097d5ff42704c6c30bb08aa20816ca5ac41593914a8df8de7262ace6b3bf3
Date: Tue, 03 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772517893
