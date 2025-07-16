Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC0E21B9C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752669594; cv=none; b=GvJlhLevZ72fA9ratodv28eptj0l0EE4r6x20ktceijFeKTLRzfMWSRWAaHTYoUIAmFh6M5NBKlzaeU2DLrdXILv26yKP0W9po05BbpZ3Nzb/pr7gA8syYLlfpWyii27fgvTjI4eIJt+UVjLXW9L11Vbw+1p0nQV4z28Yrg4GdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752669594; c=relaxed/simple;
	bh=YSdk5xb+Vv6HuzzxM4s/I4JdZxJ3qBhgaorKnmvYkIE=;
	h=To:Subject:From:Message-Id:Date; b=XDCTiExm15TJmGBdOmda6azvI3HoFDYP/kVXDPMDGes0IuJilHVdoqUOi4YnIcy92Z77R3yGAkSgU0p7DvkeCe9IJ/EGA781MxmsT+M7O2iFc5SXypj8beu5CbZWSj6r7qf/R+kqo70lkQ5e92pTrNBF9tALCA1nmZkkzDglPyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHb6YGJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHb6YGJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24F5C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752669593;
	bh=YSdk5xb+Vv6HuzzxM4s/I4JdZxJ3qBhgaorKnmvYkIE=;
	h=To:Subject:From:Date:From;
	b=dHb6YGJ9l4xDvcfkX+pXzJAmca5JO7wIdy8duyMW3qr0CYF0JXH1NbT+g6vCd+HYg
	 hqDLvMU/dAAY2pLYW+NYoMe+dMouv8/7mjwdQQZ/LPs7y9NvzaO9lWwPbmd/Hg7WgZ
	 wbX0tTvjp7jG8i0iXh2Uvm6JZ31AW0wX1H30AtFMdpd+52ppToD2kvn39oh4Ble1Fg
	 IfZgo95ViljsWTIcAuArn5UhVEhceYmAegqMPqfo9hATyplW9LYzD2CVPzSvPI7Jif
	 qVaC9ikJqEkfVAof4iC3pevjKhjentaMc87mXA2LcVdjQohXiP+8RCfdfBXYd2e1bz
	 ZPkiizejRq7Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1EC83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266959357.14854.14907904778852195619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef96eeac27edbbf6e3fc3a124e464b9725f2494dca60a5f514196757e235599
Date: Wed, 16 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752669593
