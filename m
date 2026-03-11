Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA15390C8B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773267894; cv=none; b=iX1WogcaZ22XHCoDZMmodeZs4q3Ps24PRH+eCB/PUp2L7jOGcPl4JbVAJRIJHSPi+UYSGjMlIBYMx3P+yoHn9rj/qWhjjcrMJxa9vxf97DocbZit48jclI4YdYFoucGKqQxdiqgKzT46xvFkawruxvmZaDhBt5+h/TcXT0j3q/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773267894; c=relaxed/simple;
	bh=mM8VFXdQA+paHh9o29O3AkzX7bWwVKe2a8P2nuG9glY=;
	h=To:Subject:From:Message-Id:Date; b=mADbhCMe9dpj/S1NFrd/jktSPc8brY2XxZ/NcFhn9jJMSvZfHz3dBBAr3A0gO6jRGBBjRumwcx7oj2793Fbrj++6hMy85soZ78x4Ckq3lhkLtDCxlfY1wIykcu9Q+CFPuiVNPgnfwsDUXn/e1VFV1qA95rgflvSU425MedkmVMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYxDTwye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYxDTwye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5361C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773267893;
	bh=mM8VFXdQA+paHh9o29O3AkzX7bWwVKe2a8P2nuG9glY=;
	h=To:Subject:From:Date:From;
	b=tYxDTwyeMpT0FUd1wfGWwrb7VNM7Ke/sXRTebyMt3nbFGfqHhUwl9FnDLB+OLw6rT
	 HE6gyY4P8KZXDTXejk21kd1i9wWEickG998R4UJWhgGqDko91QFk4R3yFvCOu+ALXy
	 IKdkjV0Hiyd4M6eXz/V8YoUw4jQQuDmLPNzG0trJnrshSg3P0DqaRqHS78ma1yVit9
	 BMVYy3fE0e3qVtUbEJTCeUkBa1s3io6pvS8tt4kpC/wYK2UBJVTNvjMRb9Fopj7A4p
	 PpT1HaB/LDsQGrLh6sUUmIhbIxJhEPYA+okwiAyE5rnuWD8uFfqGniHXOT40kiOJSC
	 B2V49x3lC9dDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93618103E2E9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326789358.31598.8221414456726033961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ec03207dc9a56319524b35f3a4b23016616167cc3800b26140f422378d6cde
Date: Wed, 11 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773267893
