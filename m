Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BD56E611
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720956623; cv=none; b=N+g6Dg2sN4QupYacpKZfx7CkY7cUtWUU2WaiQdBXKRLBeqn07Al8ltKg34ySpyQnYx+EkY92g10xSG2hiNrzIgo97Yh9lOWWijw03IyfjJtbzAlbyh2pg0LQRBRCshoM6HtcrLfHd7Is+YvmKHiVcVkIg9FGdcfN3l3MeXn3Sn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720956623; c=relaxed/simple;
	bh=Li2MZeTwxl9OYPy6TSubpt6cz9TAZ1XuBw7V6aUYk6w=;
	h=To:Subject:From:Message-Id:Date; b=Dv9KmnfAjxQEeFIhXmHC6A5M+ysHj2HWLivgI8fcIJouk2aNEKFDG54DKhwkXOi7CRA5rDidnMqzpeB+7Ts1zDKxV0JKmyTZHr9Ak1hto3EmCAlgubYHk5IC3O3CmQevsQGUby5NlFXRhzY0myztdHEjRKIucGuMrfP40j8o2dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVswzfIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVswzfIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC918C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720956622;
	bh=Li2MZeTwxl9OYPy6TSubpt6cz9TAZ1XuBw7V6aUYk6w=;
	h=To:Subject:From:Date:From;
	b=UVswzfInLxPDBYPZ9DeM+vQ3aNz7pFNUlhtY6nK2KJ8xSB9e7y6R/OvZZlnkz1jIY
	 p0GLY+eJrUA73kxwoC0T4qOI1yivQ4qO0eS1XF0dM9x1au7ZGmEZWcGEgZuXffwLr/
	 D1ZtYdBSmsLbGQjFxJQeXDdsCLDrJ62a3eO04x90aVuPo/9qbwvvxM5OsjMDcLf3d6
	 h41pADTh5cZzr9/pNblxZ1hSZwOdw2dMgo8qvTl/Ch3eHNpslwCUJdUUNVdKFiLHME
	 cTmoQKn8R1iN/qBLtpUrnwLb3sGlNbaQo4KW1BdSHcNLjjQT0+zdD8TyC6LlN300Rf
	 E4W0FdqUoqddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDD6C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 11:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095662275.20115.17251424547928892793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cd96e5407631dd68813b9385c1786528c95fb151f7c29f6632dadf522815bf
Date: Sun, 14 Jul 2024 11:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720956622
