Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7CF3C33
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752665995; cv=none; b=GF/r9p02HWYRlVw3+ks4GqzXutsmkcOnZqyQd6Ys1mlpq6w7F7TKP2aGQAL9u/AZEKXb1kEiRd2YwadvM9RUGPqZeGkPAMXeoKnNbWrC5+ZdHyzU1qusaED0lIIREFrt+1nFkW46N99vbAGFc4YB9InoSN67+tUS/cA3pTeu1vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752665995; c=relaxed/simple;
	bh=x2hszi/6HPO69dWLqDCCVUOxFbMG4AwWPpmN8QMzXZM=;
	h=To:Subject:From:Message-Id:Date; b=afWLwuLXuu4aQn4y3YajeqP6ItEjgOfb91keS9o0UMezFlNzBGuw1uACVYTa87ZGYhepJ95/iqH+Ehh4+KmLBs7zZc3DWyYpUvxJpZXmSWOv9D6zHHmiY3nnUz4IAMZCmrJFuJRe8/Yv2Wqp3L7ZetT1wKdm+hp7vWuq+F9viMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYkrJve3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYkrJve3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD23DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752665993;
	bh=x2hszi/6HPO69dWLqDCCVUOxFbMG4AwWPpmN8QMzXZM=;
	h=To:Subject:From:Date:From;
	b=GYkrJve3vN86mPpqLhSp/lkHLeA0cDJvbM9eLUEelmXBknn1tdc9ViOVXmCz3iqj1
	 aWKKW/lO8j0c4u6Q6gyV8yzqVEIGXLK6WD5gy6QfHjYfAk86lA6/p8SCdjbeQw/n2J
	 IecFy1Lqs8jcWCMa/q7ba+AlKSg07LwI0ZXbe0Jazpdbpk5syyV51pc777a8R6mZ7a
	 gvsnZQYLUU9LVyU+Gp2tgjEKigo0iCAXm5NIR7My3USdyB3ZnW0zeD3s+jZjC6GwzD
	 KYyNuMMfmWd5meCeHwwQItUMrz1Bt6UjGRpZGboOXz1KRjYX1O0GOByjOP1o39kQm+
	 X82rVfvKAtRxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5F9C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266599363.13125.10421202421988771000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62e3249d8022dd7ced33640d7393cf4b64ed83763184abc6a99140f016935d7
Date: Wed, 16 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752665993
