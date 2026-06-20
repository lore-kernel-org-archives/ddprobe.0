Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D66245012
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781994394; cv=none; b=GrQ9JTBnQDG/NoR6hVaqk817fsFZFeEJK9Wu7s7CH6BOTnQL2TtULOpxcTrfQu4Qr/bW2xMhw7VV4OgZrj6vPiolDTeu3DQxDPRpkMwpocC/gmw+RW1DGwPSg6b65JTGjHFo6KsGxyEwKbGeFY5mFVuhFiZk4P7MD1HM/9oknbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781994394; c=relaxed/simple;
	bh=u+nFxAJLtLxaZ8Sf4pnIns8wm/eRajmdTmh8QBrsLtE=;
	h=To:Subject:From:Message-Id:Date; b=rhvA34i048uJvCjlXBlKbvi9yQqXOvZo8nh3fGhwLoXSBGp3DVe5h2n6VA9ZxY+83hUt+NxvV2+fcMtdUcY2/n90QpjmdGUFTuvvEvXNXQcAQFYDYVk7iGGqHJhgBdmaBf5wSi6SQ4mcUz4HTJT9GbzDk5+MrgJgCBUPz/OmVSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpLHQMEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpLHQMEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1A3C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781994393;
	bh=u+nFxAJLtLxaZ8Sf4pnIns8wm/eRajmdTmh8QBrsLtE=;
	h=To:Subject:From:Date:From;
	b=GpLHQMEpPpywFEbcni5mZTfmwUWjlMqhAwY6I3/x9PBV1WXKEi+Tidkxc8DK+s5qw
	 LXlfV+2htgU7rFPAVMagta+iQiYG7EJ8kMANJwxZTuPm4TT51m6uqq/8xSeKAKaBis
	 zQrOe+RpZXfrUt3fshBRo6x0qsok/3X1tdvZN/5seMc7RwjI4Mu58bPenAT+ZZBVta
	 6tuFvZGSt5IAe9M4pk4yOJIgCWx1GPF7uADX7LC91r+vv+hz1PsjzkmZcw100xf54r
	 FPcXbNrrJdq4LxhMoe8b0qfHEy3puo7v0lVCG4WFdzpcZlqV6DlkDuzQfheYyPVWzZ
	 BqXfscSMf/WfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7572CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199439369.9968.14450897320892631512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6a8454cc3aa277fe11ec6ecd0bd8df5ffe4f49131da83360395dddf1684361
Date: Sat, 20 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781994393
