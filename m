Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F4F3932DC
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779267634; cv=none; b=a0n7xlB1LixJfyqI0Nfdyp/CQvd0GDvh6OlZ9oqSu4wuoeG3MOKOEDs5IslPVoiSNrCGSlXT/MD94VZ5o7gUCilIgb7elRD6WteSCCUwRK3bDX3JublKsoY/2P//AFtexglrdBKCZzosEw4LVZbF9hTcd3jrXYDJ/a0LwOQhR/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779267634; c=relaxed/simple;
	bh=6o+E24BlSAdz5K7Euht3LXHA3rnBJY3gZxgBuMBVCJ8=;
	h=To:Subject:From:Message-Id:Date; b=K4o9YSS3vwhk53nvOy7ZzfsvUYQwITW3QldhfUzzxnWq9wa+w5wDVjGizH4+Lxfe+okyiOQ7vq6KsqkUZXZFCqODH4ssHDj2Qb49Pd6JOjtdLrW/PGLHb2lzJIxn/l2AdQ/3EzygSMVInXokoq+NMRTIpOVMo+fpHZY/czpIo00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiVxJrm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiVxJrm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAC0C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779267633;
	bh=6o+E24BlSAdz5K7Euht3LXHA3rnBJY3gZxgBuMBVCJ8=;
	h=To:Subject:From:Date:From;
	b=BiVxJrm53T6UGM3pWhkyc8PkQ3eVIpUWsaJHkX6GYx1C5CBP66BPE4e19Bkg/Arv+
	 1+43VqwRYxAPpsz/PNrYRlAPDU7Zqhqb+1rKbJr5VKy1R/N1ZHr9uHxfTf78WgLaJo
	 luFfY/o8wsUefSQsimAhUPNgfklqwylhU0v1b1Dv0/9ntdt9MPbjSAtLBWspCaRWD3
	 bgUIn/J7ulo5jnq+LT3NOJhGcOofCcdA/+0xH5/I+iii2O1B6xdockFhCvhSflwQ9z
	 cUgHKC5HNRmjGaED7JKwm8kKphkgh2jbAy4fYGz/xegUC9J9nfCpMJlcl0PYgYpNSa
	 Ta1YFXmSJvcaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA4CCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926763370.4899.2354459889187708027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ca57e64904777c105d92ba4562d5696e3b2002fee0825e95949038883f641c
Date: Wed, 20 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779267633
