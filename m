Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0311B423B
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754669394; cv=none; b=FPh1kjcQRnCm9JngRE+x3lQ/gVSxXcMKZedWJS+KB/RHKFys3Db7k50Oj8TqFX921YHkeyomirPgBGuvpK5QJp6xOc7RvzyeXK71mJ9f4sIXBJQz9UZ686uosNIDyWr8NzZHjsQBeUIxMCWiEKakJ0I2b9FT6/DMLJBsijJJgxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754669394; c=relaxed/simple;
	bh=U81T7VNfh/PCs6HsHgwh6W55DonuNtaXUFsipdR8PBQ=;
	h=To:Subject:From:Message-Id:Date; b=pWkiWBB08hAQ2/bOhbw5+Vws4tHK49E5eDzX5xdHaAdTEqc/+5LrASL9xoxRZdiZxvr+JjnDwsjM/c0IczqG4qRhM4zLZ5FLD8Ff3zC1ayoCX9AiM2r/GEizA0QJrb9Y85CUb7hv5SbX6VeB1Nr2a/fu8TLkLwaendqQS0jLsUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTKEpQES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTKEpQES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A97EC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754669393;
	bh=U81T7VNfh/PCs6HsHgwh6W55DonuNtaXUFsipdR8PBQ=;
	h=To:Subject:From:Date:From;
	b=qTKEpQES6sZrQ/h+6Wap88sD1eApXun953Ao5zG3n+Go56qnPoCDpdHs8TXjWy0TI
	 I2g6VltZ15NXyljhtnfZsYbORpVWPKV94C0xXJFdVhMirEQcs9mH2g+5+p+iNOfhnU
	 T5k5xAOJSmq5m2gVlsQDcP6K7G8dAGuJ5k4NnhWC0cUU6av7+ogVn8oezsQEImFg2A
	 VnEHJ5n+jkrYADIvpq3CaCW3d4NK748+6sSVtwXdNZNSQlSEIfBf777MAmfzwrTNwi
	 227QLtn3cen65zzZqJ2YU1KkTnNtmsu+4ZlLfCrQUSKlzlZYf+eROy7GtS4KDKfUIh
	 zO2CxTd9/ujkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90428C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466939358.18194.11767513920093709242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bb38d5c0f532f566fd367042a57277083a718f4ab30a7583c77908715e4f28
Date: Fri, 08 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754669393
