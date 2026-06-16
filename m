Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20173466B57
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781627194; cv=none; b=qbV2L8//EbgTydLaeL4bSE3JEfaSclWyQtGW/eTgBB8ZdMloZTvnOYkVq4gP15PO5JgeCLQjyMkGwRMEFREN8hsifIf0U2qpQpIm0W9FqaMtOM0fFzzDu6KEiGRraUMK93W8LzBUa63Oc5Bt2AcDuZhHTOMhAnLfbEjLpVx7FMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781627194; c=relaxed/simple;
	bh=BfYM4IGUzmGX2NhqGJ81iO9GfJjgHXB7J/LII+40AyI=;
	h=To:Subject:From:Message-Id:Date; b=hn7LH+siRX4nphguyNWb+pyRySPO//xVH6ddCxdWJAmcAFT3QKW/KC8SGDtX0Hr59eqEMjzba3M+y3vXPKzbNVLdYn3DTetxdE7T1bDO9bu7HkPRPPt49uZwfTvFtg0klhN/XxCVdPGoPrVKWRq53e4P5CuwqK1Xb3X/gA8JDmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qubxGdvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qubxGdvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A20C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781627193;
	bh=BfYM4IGUzmGX2NhqGJ81iO9GfJjgHXB7J/LII+40AyI=;
	h=To:Subject:From:Date:From;
	b=qubxGdvnLmPPWt0IAjYtMVCtUyZ3hlAFwSMJqhgfsZVtDETAfJ+pIzzuxilJhdxhE
	 TYtelLmqSNnI45yykeKkxmw9aO9FftuSo8zXvJIXtHYNLUqHynpF4/K3QlGk7ja8Xm
	 Y7uKoonmUNK1IcoeLi/H7fcsqIqDfP8Wsq0Fc/GQPhJhQRJp7gPUxcyGSYZFfLzTdE
	 vp/kYOJlZ855k5aI/vx7iBQr44Jr6JNyFl2sDEGPTR8iv01mRRzeR9TVL7qhIyffOP
	 FP3gpoiXFecN2EOrDkRDlOu6aA0E9IfBTvtJ3n6jbZt3QGMUs/Mq0kR4JV+t/AbZAM
	 pgnqMIVAO3qRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83F8CD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162719373.6529.5274978375616578544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7d887f604f2d8117f32bcbca2a0226e0c3b047bed610fc50e9febc46cd27fa
Date: Tue, 16 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781627193
