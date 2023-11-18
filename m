Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304B91171D
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaJtvwO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C83FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700330896;
	bh=GLjTF/f5Y7asr2h+k8vngMZge12kY2anbyVuNgkqCFs=;
	h=To:Subject:From:Date:From;
	b=TaJtvwO/Wj8tkggKbfMDss+8bQzkKCBIzRr2A0UEZVt/7/tn2rpWw6GvWeMPlFh9/
	 uaAbkcFTTpaCdjOqYvVHiZHsw0I/F79FwzSBx+FLButTua+QvFbwsWlJLiJJTeMTEA
	 Pd/Ed2XYGs6Msh59fQTWgDdLUMFhKDIJPrHz5z0jN0+FnWJwa10EuuT5t/obvVdUAq
	 uy/5NkIu23ckaezQV9nWMfqj4z2zJPX5ZT/cEcDdriuA4U+EkTLZTGOkxoGWuFUPhc
	 obKgIlX9kzsZai1irYa3viV/8D8kwzpALxMwJJ0PzeiAxvwPZhYMHp/pNUsu6GjO/p
	 sNq8Ry+3tcBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9AAC5ACB3
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170033089638.8209.11119943007377149200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bee79af6a7616a3519c34f1dbf22849f5680d7a25865c3246b604ed9e2bc228
Date: Sat, 18 Nov 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700330896
