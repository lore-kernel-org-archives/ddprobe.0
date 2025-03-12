Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E633FD4
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741754934; cv=none; b=WIZfa4SNOmzpQCsF6J1+JQMgOIsIoXJcDcVaG6BWHO6fBMGNwDzJ/TNs+9bSDFO17hv3ihZDyV6Q4qf/PCieHOuC/HhjU80vagi0Kp0aYKr4ICqo2QolKsRHkY8YTA/2p2GpwAC5OroKrJ7P+6SBIUvHSynzaXAE1ChICq9PkiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741754934; c=relaxed/simple;
	bh=E/9T47C9LLWdvuOtUrICg0cXvC48Bl+TDxDONBIShX0=;
	h=To:Subject:From:Message-Id:Date; b=E7TIJRe6wGnoL6z2ezGRuJOoflMX3fZ97ASW2cLWaxDdlrSHDCgxXH96CzC3+Fq0mRdJ1CU9SeQ2yTvtDVzYvckfNBqxcxHFl9DM8/j3EduhqOq9SfUOwSULXVoGH4lHLKWrX0Qvm6GRdSIIB6pFLBoNl+HDa2o2qH1VUVo6FJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaZqxfVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaZqxfVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0A2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741754933;
	bh=E/9T47C9LLWdvuOtUrICg0cXvC48Bl+TDxDONBIShX0=;
	h=To:Subject:From:Date:From;
	b=QaZqxfVSpzP9vlAfNshYPMZu9OOrjJgFopFvATIg5FcuFhnoQ6hZOL03B1IIn1zIL
	 xWmHYswuLkeubtG1FOAkql5Iqsne9IKDMVCTIevWvz/E7gE0HKjfMdv/pmjedN0Fls
	 ks3DDei+x0s9oYJiHXZ4a5RSb/gjOkBJSJgxz2sQKtfiIECLYL/DjnzbzsGp4DR7dj
	 yW2xX2igo4rPmu4Q9/aIKgThHbXMvlrdy/f08fu/8oQ5mGb6cz3Shk4psQG9yowx5U
	 lVXYXyOj9TtQEoCULHKOlvGl36NZABICC0u/jWV87QiI9oFUwqT2GtqkAWL536mBk/
	 bsNrGqBfqvgoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48AEC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175493370.12139.3115232013157066786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2577a95ef30940e035b5da465fe006c25e3dab4e47c729a81597af53cb815a27
Date: Wed, 12 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741754933
