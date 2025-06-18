Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA93428A72C
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750244993; cv=none; b=buwuX+WlJTTqDZ5sbAXgvf2LmKEw6lyZisdliq/k/zlyDwt66DWVSYp6CuhpYZOz3HwJHedoQQT+pVdOANzaySypZ9iQzkxvpkMpV4EE/03Wm3o370HZBuSGz9tEnTSn/DNvkPGfhgP4XtjvoN2/m8WXJnMQOD+IYVFpZk0Oo7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750244993; c=relaxed/simple;
	bh=YqoUsMs6GagVXnbdSg1V5JaVPgovqzbm7j01rH1J0Ew=;
	h=To:Subject:From:Message-Id:Date; b=PDonBmrICvCv9cBJygHE+Yt6YOfFEDJNZRJaTSFsFZUErL0LirU7OUhrNVt6wM9SRaVmSAaS7GMvoXcmxMGWiEbyMlkZFVTJQaS/dkjZukCGLo0CgRFBMRF4BgH87QIJbyjxYkE/nkKwRs2NLvRCRXT75rvDu/l/gEoD1bhHLY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAqXDK2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAqXDK2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A420EC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750244993;
	bh=YqoUsMs6GagVXnbdSg1V5JaVPgovqzbm7j01rH1J0Ew=;
	h=To:Subject:From:Date:From;
	b=oAqXDK2S1MAic/kZgLjuD6fDTksXtGRJJyr9CJkWYcjlNDicqO0LxKYqiEuwWdbEL
	 p2Z9SmNYc3vp3l0HymaQ2tKfAdhCQzQCrJ0Rqm5gIKncRzNcWLU34cCSIDveeATGaG
	 A9dKRjFUyUuvNZb6kVeqirdc9Py4ejYU4K7gL3dsoku5pDqbs0x7+Wno8vRkxXnU/A
	 YHa1k3pdQV6GHe8GSsvJzvW+vazQ5lmTGYyyXVGVFuNw5lo9ksGbTZvgJCGbUV6DRQ
	 PPOXr1QIbkkfUiXKAlf6T4Le2gLeW97PxIS0XhHyuhKngGGhw3BA0rizzq3g2anABE
	 Vysya41MwqJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A7AC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024499359.6216.16965949291081338208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfde878eccb1f4292dcc6fb788d58045bd3bca2d27769024ab30ebc467dc03a8
Date: Wed, 18 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750244993
