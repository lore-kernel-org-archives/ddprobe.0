Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9A334A76A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781441794; cv=none; b=uRom0qFnQo4HDpaiP3jR4MDHJI0CM5V4A8Xg+AWDJx5gAG8fvCMsUe1OxFxT0Y57yGvtE6nKn3diPycGFc+X+ferAMG3zJjR6emkXXg0Z0dAioFPOZOamBrHv2BhTGfuT/AFAZNwboEfC2jkj0btjgS7pwte4Gp0Km8rtDhbAiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781441794; c=relaxed/simple;
	bh=6q4mFVxE9xUjWaJWAY+7kVKeRQwJYj6uQ1G5UT2bc54=;
	h=To:Subject:From:Message-Id:Date; b=uEPyV7TbxxdTb8tyIwoktTyyT5Tf1ADw3m1QobXr3i+/c9XoNkS1D7LT6YPU4M902UVIeorKtCE0a2eUnmTC7hj/2gBUDJSsXr9M1l3CnpwXjtpGu7RHiTmB0Rv1Bpzpxm7dpwEQOmPlF34fCUu48JmY7ttpVN1bIHoZaaacVec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3Bmzihr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3Bmzihr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F4BC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781441793;
	bh=6q4mFVxE9xUjWaJWAY+7kVKeRQwJYj6uQ1G5UT2bc54=;
	h=To:Subject:From:Date:From;
	b=S3Bmzihrqry8rA50FRXITWcIJEfGTwXTszFmGAGC3hEJNkmQA+JPMopkzlantC7XL
	 5q2RrsJnvjZEZdOE5MocyH2wNw+vtiI8MxAQyyxE4UTzFvJDXANO7Q9Wi9QDJ5QWcV
	 /tNuaLmFhiQ8nnwrlyCBaiRZLgX/ihyBulP3B6HRiwTfCwdPkm1qPoEV8W9dDg8kpP
	 geCH7AXpzMAGH/lXmSJRb1tvxLir5RQgi76hCYMvu4LRpyHeD7pp8vAqgCaZbDqfrg
	 GcYJU+GDpUpP5nV0mJOIA4exwux98aFq0aP6Hx2e281qYmIbzmtGhNw4zhUVLH0N1E
	 Y8DV9311VglPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF15CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144179369.9901.8847107084366455731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18cb103e801f98ddd50a734b6b48776b782c83c2830722039922e1584334ea5
Date: Sun, 14 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781441793
