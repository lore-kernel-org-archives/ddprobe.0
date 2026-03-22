Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060DC1E9919
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774158894; cv=none; b=cDXGJAhiKpz5TFEDNMrdKYg10pP/O2H22d/tf+KOW8SWbNZxodstHFHkRlvCS4/pm8z5YgiIH1RKNGmrP+/rVYTAGtFclwsDS/WLrFOOWLpOh00kZcAsJAgXlBWCSV1n+MUDbPWkKNqQH6FrFKZBvaL5zV70uPi0/OSshTyDPn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774158894; c=relaxed/simple;
	bh=n6rtSAMMWgTb03IY3kaQL9qyivPGYp8hVYBARvB8/Hc=;
	h=To:Subject:From:Message-Id:Date; b=JSCdv8PykEc1pO962WWMiIqyWIr9oinOEjsjyNsoUUGGGv70op/fo103pf3VObBE1Ozx/hmBAiuOStZ3Zs94IiaphilORRl+injJV620k2gKOw3h2AdjebcDzUdCP9kJEwx5t+jyZzKAUyhpS6MzGgzWUhZc0pE8qoOyx9tyjmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeSFnpqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeSFnpqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6227C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774158893;
	bh=n6rtSAMMWgTb03IY3kaQL9qyivPGYp8hVYBARvB8/Hc=;
	h=To:Subject:From:Date:From;
	b=UeSFnpqEf+b9fYS9lGkXD1kYtc7PNXYt6myplOl/iF9GvcUZGjmtkjhfXNWWF+Aq1
	 A1bi5Xwh+3uKRdGEhjyjy36gehgpq2zg9bntK9/AQ3Y8Jt2XWxp1RrZWt0XeyXBtYZ
	 /5juj1LpsDMJC8PaXn4wDrQrjtAjqwUkituiL25tZP5YhQ/p0k66CTs5G78GYSa54y
	 GofHlkO37qIkTbK8E45kWlPd1edF7QOHvttvs4hTFAy9tmtUEfXhmz/LidnLHPELtR
	 BfvD0+SLaQ6jHjAc63s+7pmfXyDOrB01LS8R5oBM4fQJZBu9B8pug3lDsAxuo8FHIL
	 Umkjm0hAB/1hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955D3FC72AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415889358.7798.2612957036454455859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba825a6bbaead5f46e49c4b5cb4d017bffe9e63235b591731f51f00bdfc50b4
Date: Sun, 22 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774158893
