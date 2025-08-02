Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234AFB665
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754118594; cv=none; b=FWpds0mOoCulBE30n2M6o4P9EErBqifJqFFFnAUnyuhSvUF9M9cuaxCXzpQOdwIhBwgoBWxH30hyVFOJfbhy2bo5QIF/XRz/MZ9JIJaOcXJXmFjB0bl9cbTaELw8sfdgZqoHW7xTYrp6luUdOZ1gJEYDa9JyfD2ChLrKYBVD6OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754118594; c=relaxed/simple;
	bh=YpVUQMJbmOeYfrpBMNJCaA2XHqJbI6Hu+nHZlzANbQI=;
	h=To:Subject:From:Message-Id:Date; b=FywBjB7RzcpGWUTSPPnT2bLEJzvbdv3AahF7RY+PBHRXp3UnegI5ZNn3JJapJ4/rFng0R0yaBqmExqpHqiTcY88jeB4MzLyxUIFj4vmSYi6oeogvXesBZlv510RLxypTtLLsYEJHlt2JVqXLKPj9jLzrpUvSPMiA+Ai3PcYJ/Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/iBQfKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/iBQfKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B1BC4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754118593;
	bh=YpVUQMJbmOeYfrpBMNJCaA2XHqJbI6Hu+nHZlzANbQI=;
	h=To:Subject:From:Date:From;
	b=s/iBQfKy36yBfteAe9d8EBmBpaQVbeRU0PxjeWsUyXiqMYVVxszREu5WaXp2R8ubk
	 v5YC7uCL34pgsZ6S70SuoOraNDcMfBUYM6DLGPoBwWB/6ShmKDOIwCkCoGZJv2XsOB
	 uDmm8hdNKEnb5aOGPc1Frc61mvafFdRo0K0Fq1zhs5aTbNrb47dz1xF4EHdSQB1HKE
	 nNwriCr3W4KkVt1kiKsBKYSDK85EbACJWse19kmUqDWRlVX/6m5qpC0fwhcqNcq32T
	 UemQrUGlcIvVR0NL5hycgxGmxj65vHAhM56WhqovAzKNy9pRDtMfbnRCLaKKdjTu71
	 ED76NPyy0V4OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A8EC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411859358.9817.15089418906031690006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ecb9600dc92def75dda3046c2ca1b8061db28a33ff18e901013fdb58638436
Date: Sat, 02 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754118593
