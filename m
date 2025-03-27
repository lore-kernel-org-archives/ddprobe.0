Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC5B4A21
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743078594; cv=none; b=mCyBgmbHO7AjLMZb4Q1JaWMzo3IQqgqnscvbY3x0028ZgU+rFQ+Mj0sY9B3tyjjyfQnep9SMYU+sTkMB7DUTe1D52WIY/Vg2amE35IDDQ57xSI0d0P1vri0HzJ8wB3ZCqpINvfnbkkEhJYoJbXYo0G7YRVztBALyngVs31w2Gjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743078594; c=relaxed/simple;
	bh=u3+KkTqYgbkVCCBZdSNJ6gpIhHAaKTo1xYJzFi4iuYA=;
	h=To:Subject:From:Message-Id:Date; b=sUGN/ifoTkz4cQEibZfph/NX4RjVyVL+KwS6ONxz+ECp+Ld9EJaonMeRzriR0HXJy+gjt0tQfXez1muJEd2f9VZ87kwLEAjrZpQPnFd8haYDmvRH56v2M+S1K/qDcrVBZwiXdADY+5dJDK7EDirX3DaMI/yUGq+u1uOPZuZmSDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zqh9ZZDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zqh9ZZDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF7EC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743078593;
	bh=u3+KkTqYgbkVCCBZdSNJ6gpIhHAaKTo1xYJzFi4iuYA=;
	h=To:Subject:From:Date:From;
	b=Zqh9ZZDaW+qslfuhSDDsB/znsfQk591u9+Ps9vNa3jeWbr/TrI429JLb/tnO4AjCz
	 BO+mSHp2kRZ6Y66vrrofqIcd3D4tRIfDrAjSztHqv6Lnno28qo6FZAKNzZv6F5Ckkl
	 9Iwcl8LroODn7rPA3EWC05fhtoOZY59MaVv/+uwkAVBatzvHyhKiPtZrWNjmkHqKfD
	 YxtTXUdlen+bO0hfLOJyFyZUr8SCXSOaNJOcuzqOCOKzWBRiIT6dd1LF/nUYl5nOvM
	 2tAf7imA5GTEUSnKb4BXgju5y12WfCxWdZAQk5IT9q7lH4nzvciHNd49YZdvhJ0pJb
	 c+d0lTbbRLdeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDC8C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307859363.18892.656730769640041264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e798da99de52e4ba1839d7c1e297b712c34ba4b5e6529ef7e33357cd65beade
Date: Thu, 27 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743078593
