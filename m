Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D997E5
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 03:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26078C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 03:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675221846;
	bh=9U7au1NPv0j/hv1AY48+sT46LiDEieFnsZKFuyuuRQc=;
	h=To:Subject:From:Date:From;
	b=M85O7DZMqCJD7uGdD3pai6uOzvrvfMxw79GLyPyRSbbKYdzoJxUQU0oOFbDmbqGHQ
	 6/flQPA+sdoxmIWE/5wyMrlEOPh2e6HksbE+pqFYl+TJPchDzphNIB1RyaN84fJ3HC
	 /5779AjfsqMymz9uJuiO/IGDOXZZavrBw6gbK5RBO4HoizsUuK+k5BHASW6XUtZ3uz
	 1MNPIAMqlNhdE9yosRgQX7fVfbbFqGKmkEvMAqgN5bkOCo4yhvOGm8GnoNs9aV8XPI
	 ghwkOgMIWbeEv+b9iIGDNOpuYIXxQKgtf9cMUyVUeN4ts4FlM3WKuKFFWLsRWOtY3R
	 NVPwEvJkPsSSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEAC5C636CC
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 03:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167522184596.693.748454836152446264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9c44e68b96b5276f9a80dcf803aab2e420d60b1c0623c29733467b0f93cfdf
Date: Wed, 01 Feb 2023 03:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675221845
