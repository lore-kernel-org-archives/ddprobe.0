Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A345664
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721440554; cv=none; b=YamoXvFyvwkNPASkzELAftl5IIQEwQwKY4KGIm77Pku3iIbaXlTCmbxu4LJrAEPsvP7/WXNgRSPVjNAEhPZKszQpoYROZoc+XmE1FO1Xr61N+TUJq0wUocUIwjxXywKgRn4ZupMTx1NNbkGqp5LE6PPQweVz5JzAfwD00fvP22U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721440554; c=relaxed/simple;
	bh=tUGFxCOEatixtMxZXE8EfA088KVgxOdUGEQF6M9JlAE=;
	h=To:Subject:From:Message-Id:Date; b=RXNWkG/83Qvwd707awkc4Alt76FSbAlyWDGOf+lRQD+rOEwabNtvfbqgx/0FTzpgpZWTtm0BouH0S/B2mk4znq/PCdlpRgqmzRL1NxK1pUQwvEp54zGCYkr+gIkgwajILHHlIVtIS6/P+MNaGnisd11Bt5jasQSFsu9frrRVqSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJZr9bnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJZr9bnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFC9C32782
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721440553;
	bh=tUGFxCOEatixtMxZXE8EfA088KVgxOdUGEQF6M9JlAE=;
	h=To:Subject:From:Date:From;
	b=iJZr9bnx6vosOBUnlImoy3iMPNDTiyTiMuqOnrdGkKiRXGmAC0R7ZF2oLlZ2DqYfU
	 OLLsN6Hf/roKdOfeIFceo8hjthlVqbymJLHgjSXGj4zR+kY0nYyZlpj6lNs8EceU7v
	 rNBBc78HPU1JUQksBMOGuF1urdwrmX1ALsDB8MIpa+VTiLkuRSusyjwmo5lNZA41u/
	 yft5ANJBNbZE5hBkffy4+6EfXMWlNtxqjXC6+cKmdTUmTe0m3uQ807qaBSO2Ml9y98
	 AXw+PfGg3cix0k/7thcMyefRjCx5G36i/6OBuGHKYROSRjvxgSqFbY8lOv4TRQaIUL
	 4d98LTBtWrktw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12AEC3DA5D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172144055370.7682.14244496114113754709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea123382c357c4856debba18a3e4d53602ed5acbd1d7cf52ebfbb1174ebd51d
Date: Sat, 20 Jul 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721440553
