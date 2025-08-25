Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202603002B8
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756140594; cv=none; b=pCPS5lkdQheTJJKW7ySSE6pcrmntrXTXWzX5WWZi9OJCQ/hSmhdEEZqqFkVzWvQqtXDtDW8ZB6zADTtdHW6FHrMW96mCuZapx92Cx1Bmw0Yv94HT4XWnvpB7bdxxbeKaa9j8uWzAfZ4f7oTEC/M6w0DRM1vk9KPmLPco7yNo4uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756140594; c=relaxed/simple;
	bh=mqPE+IOUeU57sxbq+ektJpNxp1VWCyykadAWwqSLGD8=;
	h=To:Subject:From:Message-Id:Date; b=iTsxk5Xz0yS7mOZY/y/SZfmqb+fkmQ12erKPWjoO8xsN9JMk8/maRX6mwJQA9UBku1N2/e/PlSVhXCBeIIVFYECPEtjyx2GylD8oIiLy7f4BxgeEVhug+rdLBgsKVItglqDma9hv0oDjKb/Dhkkt8M0PfJG8u5opc9YsIxrU41Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkSoqXZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkSoqXZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3444C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756140593;
	bh=mqPE+IOUeU57sxbq+ektJpNxp1VWCyykadAWwqSLGD8=;
	h=To:Subject:From:Date:From;
	b=MkSoqXZQUMK5IaNXuUl+FPdE2VCxbe+/wYY1hpzkYsqJhGyjPwtZYyP9I7rlWx38d
	 zQd2KbGcyibgRxI+HYPvgz5L6SFOBRezYb3zAQGjLWUqRx/5uCslFYHJjw/cj6y3pM
	 kmnfhz7FqL4WqICLyQzISuMPVKnIq/Q9euyeTKfCmH98opxYUIiJmO9t0ykTDfK0CQ
	 m0m5U0Aix1TFeb+dbBxnIZ7XCxWb0gTrd1kmOGFa1yYoaJI86MDFS/1GwOZfzj7Cjr
	 nlIV6I34fSdZochCvHDddk+RN1up/UdSSzQrlDTwbeHCWx56vuMahpUIR5kVwmYLRN
	 UFkNBVkMUp4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E8CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614059357.21056.13759915537215526687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bdbd0d169d4879c887fe9425c6280502f139f9f047fa37535137765a00e3237
Date: Mon, 25 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756140593
