Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE433115B1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755591594; cv=none; b=u91oY6Au48o/5zE2OJo4ZjruRnJ2TYaSaInPhAJJhmF5fN9/zCoMBMB+rwpS1gH1R0cbtC+zRqMfg8UWIw6g9Ywa01AZ841e5cr+IeMHKWv4hGkQkaivgsp7R/p73X0cnuzIoAAQt8+G3MJDMS1e6G6FKCW1GC4t/k8r4x7QCzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755591594; c=relaxed/simple;
	bh=dEzMxyqD/NF4CbQe5Bv4N92Fs4b/uQi9Zz9p5cMnUx0=;
	h=To:Subject:From:Message-Id:Date; b=JhkaCmHYgeF4biY+GHEbw3H7l/8go0T0rMopwQOTysKbeTxXhEuOzXy9BOkKm8NdAA6Sn41ejnXLykZgpeHJz3BrOJR+jv49CjauXweGEizVCKRoUxbg2JgFk2Q3tweHH8S6mILWLjZtEXD5vbA55HKs5wQT4DcFNmmN7trAcjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8Vekezj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8Vekezj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B76C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755591593;
	bh=dEzMxyqD/NF4CbQe5Bv4N92Fs4b/uQi9Zz9p5cMnUx0=;
	h=To:Subject:From:Date:From;
	b=o8Vekezjsj+wz3pXL0GSFT0Sz7D6cQGcwmD+7BSLNUgAcbVVHSVs6pmlo2RNy7boP
	 dHeulgyyXl/dWwlWdfG8PUQ20gaWJn1cR2+kD9852iHceZIulUsv/0SzgLPX258OZK
	 pKLCq71zV3myU7Pb2tqYkJuBh+vM8nIrZl7aHwAAa+TsuL5sqyDstXK0s07YaUg9Z5
	 5BonpDiWA7jPmjoCSvAvF/tPR0Bg3O5Kdr4sQZkq0PBzbMWyrrDG1Dc6ke0OVwUSZH
	 GHY53zOkkdOoX4DkKQrNgLhvtvTbbfsBZ3U1jVQ5/v+g7FjlSE8QJp7tVO4ZEeaWSG
	 pJExFxurQ/uYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52FCA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559159357.19628.17905067335176187166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69da8141b8d382377ec218765d9b099183071be7a56159fe481e3b6d47bc3339
Date: Tue, 19 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755591593
