Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8990F3932D9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778485234; cv=none; b=mHZ33hvEXrMWl+hVuGNrHY2l8ypuZ4nmEej4XeVxLL4AKn9eWb5MvCcYO0Y8pSZU9RzoG9ZIJhKraG61AyBUFN03sUw+iJXgMHYjBvFc/3Jg4dZqGtYS0meAVTIfpzi04ShFRWQgD+AjV4X02DDS8zRbxGAkW7bb7wTTZUb08u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778485234; c=relaxed/simple;
	bh=+AZnZFiEKxhbPhahZhxoQ1XH8gixjq2zS0rDNkPZ4A4=;
	h=To:Subject:From:Message-Id:Date; b=qDs5I7unrv2BOc5ZifQvYLLsQNBGkkrZEQfMA8rBdEQC0wckB+MlbRVowSo08NCPUoKU8SXqzPGWeexbFRprzUwXXU5cjHMgM0fvczhyHmNQSgeSUyTe1cxOOtSOEttJKaBkxKNB3ci2yJjmLmsVyYgtTgyDAWTSRHdTSlsm+E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdv2WqJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdv2WqJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F2AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778485233;
	bh=+AZnZFiEKxhbPhahZhxoQ1XH8gixjq2zS0rDNkPZ4A4=;
	h=To:Subject:From:Date:From;
	b=bdv2WqJEub/3QiPMcLCyV+KCdeM2RALxr4A/4yEpUGPi4u1Rfsu2ED4ttNZKWo4+v
	 7VSUkaqRVwrP0kzTOI3w1X5LzcuriNtSYPPMZ/+LEtGkgnLZHrihVscACAshNKbBWz
	 v66kD8ChusF/8NwkQ/fFQL84da0kp5N/lxW9EMPI5+4KrJUmdHY0cOm2nPehiPZODE
	 eymaIOmwzNhOUKnKzWYE8R6UeDvMcvwQE3Z/ZKNu8GYNc/mBS+TCpdUwzA6ELFEtok
	 dnbCErX9K4xzxUr0d4EX1NKMVDZMFv4g52GmX9TwEG2RgEgXw5VH08JOfTfNg4/YoL
	 4oiyRFKsIvf7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D43CD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848523374.30823.5182424144825479340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1aa1950063a1663fb4ae5c713aa09247a0ffe763bacf22e108c92803c193db7
Date: Mon, 11 May 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778485233
