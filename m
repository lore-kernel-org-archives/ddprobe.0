Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A93377016
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781723194; cv=none; b=oghy4AeFdidVJnwBcrr9scHQAXrXJxtzO1usfLQHFVDPvxn1tFpt+HfOkaJLTWw/hcnP+PfjEmmwYjcKAtySEdXL0w39ug8qUxJLud2KEJdfARBjVq5fo7gwjwVo2kImrfEhYmrTfM0Xyax0jDKoG3OxGPMzo72rt9FxCdWI/Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781723194; c=relaxed/simple;
	bh=zzTsu1n1hKup671Dbxu4e+2lUMiMBSYTVl28QTyPR0w=;
	h=To:Subject:From:Message-Id:Date; b=cDCiMRrfOk+oRGHmx9PCb6FuKQEbUF7MV2fGUz7hWRScKqRsB/ANJx8VyY9Kg+ARf1llidKLOiH7xstzHJ0nwQVQXKU3f8iJKt0sAqF/cufzabzoG8j8eXBhHL24Hs0QVuMytW52uXeQSAD8DJD/fzpxWIeII4o1RELOq/Ezcr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBsJEVEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBsJEVEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1114C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781723193;
	bh=zzTsu1n1hKup671Dbxu4e+2lUMiMBSYTVl28QTyPR0w=;
	h=To:Subject:From:Date:From;
	b=lBsJEVEOCPGZyP6vJybQzXOqBUEceasy4HAfb+HXv9dS1cHj+v1l2w7OWtEh3Xh9U
	 w6BNt2iLZoolW4s6C2WuhqeA4+ZPyRcEPxQ7Q5mx/g6Zenx4qggt/brKRMgk7wIUO3
	 jlYgQIVQoYOsuu1wU6xfLvYghhhxx3HRJNCOfunXdCASwpD9BQl7yD8SS2v92QMcb4
	 AFA9Xxvs/Q60KXekrcINGJO+6moZk3pXzaI0LgXLpM54b4+eYbqCM6He+gaSc8lT5N
	 vGGQpPM/aDDroBKaSQwd+Qt3pdAehSkc19cBCsj1kDsuCkAhBWVO/i7X6ntpR2tuAR
	 0Yd8z+SMxWJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1EDCD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172319368.26891.6162446568868343585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74e8b17784243bed28c84580e92f159aedf499f267731671f8b2a44fbbee941
Date: Wed, 17 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781723193
