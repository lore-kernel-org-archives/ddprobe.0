Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F71A1CAAC
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730629554; cv=none; b=nUydYevWM+CinafY7dbJqW9OSWUxTlKej5uJ4w6J1Ro4K2DjXdiI1h0xbynSjxiWAeU+2NYKL1DwF/J8Y4XKeXI4QTGekpnkuiC0z4OTlLgRTu8puCrl3CLfhHyARsTWU8VdXV/Gn79qnhJRHkmw9jJIbUsP4GhjasBj9sNg0Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730629554; c=relaxed/simple;
	bh=qpq9u7Pj+dYb+gc0zuah0RW7wicNizke+MrU0jxPy68=;
	h=To:Subject:From:Message-Id:Date; b=Vt/vCN89iCeiqeWlpelCl6mo7qQ7zHDmL86pP3khv1WIwqqUToQaIf2BHlFzBxXnLji2/A3yDTTCviDziXOSc6DTVxsFytO+znuWG8YAm1V3u0TQIw+rjfekEQJ2CJmGocHfJh08OhXHBohtUNnlJVYCKp711u589qt/YZpWB6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mdfas+tU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mdfas+tU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA28DC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730629553;
	bh=qpq9u7Pj+dYb+gc0zuah0RW7wicNizke+MrU0jxPy68=;
	h=To:Subject:From:Date:From;
	b=Mdfas+tULa1GHy3w9uS7N/hyIsq13RXQEg6eBUNqP+Z2w+dwal6zpk0n8obF/Gkef
	 a2ZmeDS30aX/1HGrP1qDs/thS6eHoVuY/lq5MC94sZS+TlKLoD2wHqaXrpjLNww58g
	 556Sss29lDKLaaYZ+vhoR+hwLjv77Sd2c0uRIcmweg+dgDxvq7a3Ry1vHaK4ML22r6
	 qxVvM9nGOAACcv8/u6/kIdWZlL0TIbnr3MvMPSlzHXNE1gkZ74bIPEihoRKqBQQZi1
	 9SbMdrBjQu1L/2lEAMFm9A/rOxtNQzSJ/BQ+ZMn0AYfsFtz/0NBPOSWdCTdJPILvsY
	 4Fy1oj5MJ9Krg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96099E6781B
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173062955359.1663.10224938675020026162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79028a1d0027b650998afefb52f0dc72ef32ec97cbc5276f255eed000cc19450
Date: Sun, 03 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730629553
