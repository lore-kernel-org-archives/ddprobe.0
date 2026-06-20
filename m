Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560DA3438B3
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781944594; cv=none; b=Y1EqglUV5hEBfVfIEA126nt6qobg9Ic3fX1erG5zOdcpIFfWQvd6I39zi27ZJjCBLggvSIo/W9ngDSaobWAnWAoDbjPGp1Xx8/JFWDuGN+p+1XtLKu6nQLiuOtD6C0c5li7F+eu949jvNGVWWo2Cl2+JkneLSvdZc67+T+4ZOAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781944594; c=relaxed/simple;
	bh=MoTKvtwNs9uzzQNYju1WE3y8Kk3/Zhy5OKqa/YxztSI=;
	h=To:Subject:From:Message-Id:Date; b=L8YT5jWyuwKk3Qb1ztPIYrWlUt6biyyCtXO0mBEhe3AJCpqYZSZ235J1poM2NCwDK02U3DCl4h3dI99lcbx+93BwN6dyH4SIyJkNSpq6NiekoWmegRdYMXf3flxUHlD7D4xZcwLofn4QCb03Fq4h1Mrs8as5BeOPqv3sPjVaoKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJnvCyVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJnvCyVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6014C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781944593;
	bh=MoTKvtwNs9uzzQNYju1WE3y8Kk3/Zhy5OKqa/YxztSI=;
	h=To:Subject:From:Date:From;
	b=SJnvCyVICPY6XYTsYq5QvJWgI3Yt/dkst8HjcA0N6/nT3MzNIjCCJ7Ik2ttE6kIXI
	 RRZUY99Mb5ilqUiFjVpE60wpYTiN5tDevM1ZremtjlRqwVKPf8aTdWcmJXkAg14NG8
	 xIwS3vZmWVRJZBpM/hYUi1WNU7WQwBzlSjoMPye4zRS+ChYm/zKBXEP0yQ6EWklvNM
	 tovQqGWWZHLSgHLUq09v5J6xk5I9Ywln37Z9E0F2HAzaCPHx93OCpif9YVUGZ3CmQl
	 xxfuCVSrVzytHHX3lhjaELPWK6pmOWDbJyJkes4NdAUP49wFoOsKw5jKodHqPAeq17
	 dE1lK/3uOqm0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1BBCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194459370.5636.5620355126172885763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3880faa34f2603b435f201e6f7f471d89a7a6571154b3b22e2c4f9410149dc07
Date: Sat, 20 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781944593
