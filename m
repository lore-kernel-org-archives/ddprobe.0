Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85540DDA5
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716012143; cv=none; b=EWXLdznf72jktOrY0PTvzwNECSWxRQNdQqborRkOGwZJXp1aypQk/hPIj9h0SHpMQCWKTnLkp8sJGKtlJ0plck/Ch0dg8x6ghQwonaiUXvVTYwemcyVeKlS4H4oNuF19Q22vBz4AZ9e/+g/GGFh7f1MWLIQPoyCWnKN3+PK3qXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716012143; c=relaxed/simple;
	bh=7qG2nBoOtrl52T5XzLXiMHpsPM1HI7YSGS5yZH3Q+4A=;
	h=To:Subject:From:Message-Id:Date; b=jGaVJR3d2BKFKnHKu/2GHuSR2LA8Or2gHm8OCmRwm9bAmPcpZBO6aiPjxD2gmmIoBWI9+QVNrEUWaCOkrta6KlySNVlLj2UByEF2c7BnO4YBFiRBAIj/eTQ8Sc4TjHCnnRADwg5qhr9IZig3tRe8NcmZGJPJSt9WpsRYR5P0JHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6+NdFS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6+NdFS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06BD9C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 06:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716012143;
	bh=7qG2nBoOtrl52T5XzLXiMHpsPM1HI7YSGS5yZH3Q+4A=;
	h=To:Subject:From:Date:From;
	b=J6+NdFS/xVOP5QU5FitTdLBdLA/RgElRXMd9K/VVOW8DYs/mK3OFrT7V7cr9D+DJU
	 OakeQfW9hbSsAzAyoGYeGxBoFWlNTqUntnXuY3tfEEvgPoRsCfqRn81SQGdWhRB7QQ
	 j1UtbVzURbqwUZjuKkjiLf3ks5eE3d4hUbgRQK6okmrpoEH9EgSQqllodV2uBXyXj8
	 jOxCTYi9ZmLDOZI+yfn0aFZAYFHNBWYKffD+lf5Mi3b823sbpLfKNHgiSgnaCLiAqm
	 mH8OjDQjo0+je9Fq1jAmVpzp94ihaXf8usYO/meltyq2j8Klkygnk6oo4YTb4Atydd
	 iiJnPG3X89+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEC54C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171601214287.18956.5346878491287256061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711b0eb33eab2c7f1f605e995bf8740c9f15a0a55ba3981ac52a0a9e74b6cb59
Date: Sat, 18 May 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716012142
