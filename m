Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184E426E70E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767914635; cv=none; b=Vtfnld6iSbuSzI6G/sFIcqvPgzlN1m87nKQAQT7/2O2+j7wc0DXdPdt0L5KcFdDawBy5ZtFIjRIEdpz+xVUE5Oqefn5sv1E4YsDkS6Ba0KgKzZ+pWEAnOw/NKt9x2kx5xXU+1bXahO/2WMUsxAizOYQKMwka1JeFxu9PBA0yaG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767914635; c=relaxed/simple;
	bh=c51NZTWxqPUltG23CeoEGmhay3u3zMICWQ7pX3qvlks=;
	h=To:Subject:From:Message-Id:Date; b=f94JKaeGBWLsT8KpT6IZrCi3Xqm8OQ+YGgG1JyFBY5LpE3D5NWV41OB1zDGxWFxnRCAGPJkXzZw14NJ6tr5HsX1J4qdN9w4IahASsgZKrAc3L8KuyYyNm9N3YVNY8/JfKJMjJY9V0BoEpaLLUGADJ5Vy5J0RwHSkK61R5Wg5G+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alTJs/kr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alTJs/kr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E309C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767914634;
	bh=c51NZTWxqPUltG23CeoEGmhay3u3zMICWQ7pX3qvlks=;
	h=To:Subject:From:Date:From;
	b=alTJs/krZP4uHWBx3XjAeYblVYIFg9caPbwc7weyo4vxN44YKSehMmZFmk0Hsn17L
	 HOPC702hFu03OT1nW6mUaqcNUU/irKa/A/j3NEYg0xxeMS5k13c9XwD4tjn17lcm4L
	 yRimJ+4e7jnhsgPBLXvnLnCRLAjskSAjpzm2M3vVIdGCzCdDv1HTPxD7bWCdWASZPn
	 lmMjGESRzh+0yVrzTfQ2Wgv/v4lPyoB0n2MNzrpqUwUx8/eHOcFn29HzmqNfDfoJUi
	 C8/kQ2ZsyUqh9CgHxnXt+hp+5pRnLSFsi/a77Jt0czHS3qfyPwVWnQZcR0tHwzaipL
	 b9gQLU7eD2RVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90122D232C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791463358.3929.17755947572149243717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b4829fd2b59172af481f216ff117c949c297ea00db14aceb6996348276b8b6
Date: Thu, 08 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767914633
